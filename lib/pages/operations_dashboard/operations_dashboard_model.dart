import 'package:flutter/material.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/supabase/supabase.dart';
import 'operations_dashboard_widget.dart';

export 'operations_dashboard_model.dart';

class OperationsDashboardModel extends FlutterFlowModel<OperationsDashboardWidget> {
  // Animation controllers
  late AnimationController backgroundAnimationController;
  late Animation<double> backgroundAnimation;

  // State variables
  DateTime lastUpdate = DateTime.now();
  
  // Live data from Supabase
  List<Map<String, dynamic>> _recentActivities = [];
  bool _isLoadingActivities = true;

  List<Map<String, dynamic>> _activeProjects = [];
  bool _isLoadingProjects = true;
  
  List<Map<String, dynamic>> _dashboardMetrics = [];
  bool _isLoadingMetrics = true;

  void initializeAnimations(TickerProvider tickerProvider) {
    backgroundAnimationController = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: tickerProvider,
    );
    
    backgroundAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: backgroundAnimationController,
      curve: Curves.easeInOut,
    ));
    
    backgroundAnimationController.repeat();
  }

  String getFormattedTime() {
    final now = DateTime.now();
    return DateFormat('HH:mm:ss').format(now);
  }

  List<Map<String, dynamic>> getRecentActivities() {
    return _recentActivities;
  }

  List<Map<String, dynamic>> getActiveProjects() {
    return _activeProjects;
  }

  // Real-time data updates
  Future<void> updateData() async {
    lastUpdate = DateTime.now();
    await loadAllData();
    // Note: FlutterFlowModel doesn't have notifyListeners, use safeSetState in widget instead
  }

  // Status indicators data (calculated from real project data)
  Map<String, int> getStatusIndicators() {
    if (_isLoadingProjects) {
      return {
        'on_track': 0,
        'needs_attention': 0,
        'at_risk': 0,
      };
    }
    
    final onTrack = _activeProjects.where((p) => p['status'] == 'on_track').length;
    final needsAttention = _activeProjects.where((p) => p['status'] == 'needs_attention').length;
    final atRisk = _activeProjects.where((p) => p['status'] == 'at_risk').length;
    
    return {
      'on_track': onTrack,
      'needs_attention': needsAttention,
      'at_risk': atRisk,
    };
  }

  // Pacing metrics data (from dashboard metrics)
  Map<String, dynamic> getPacingMetrics() {
    if (_isLoadingMetrics) {
      return {
        'units_completed': 0,
        'units_completed_change': 0,
        'scheduled_today': 0,
        'scheduled_today_change': 0,
        'completion_rate': 0.0,
        'completion_rate_change': 0,
      };
    }
    
    final getMetricValue = (String name) {
      final metric = _dashboardMetrics.firstWhere(
        (m) => m['name'].toString().toLowerCase().contains(name.toLowerCase()),
        orElse: () => {'value': 0.0, 'change': 0.0},
      );
      return {
        'value': metric['value'] ?? 0.0,
        'change': metric['change'] ?? 0.0,
      };
    };
    
    final unitsCompleted = getMetricValue('units_completed');
    final scheduledToday = getMetricValue('scheduled_today');
    final completionRate = getMetricValue('completion_rate');
    
    return {
      'units_completed': unitsCompleted['value']?.toInt() ?? 0,
      'units_completed_change': unitsCompleted['change']?.toInt() ?? 0,
      'scheduled_today': scheduledToday['value']?.toInt() ?? 0,
      'scheduled_today_change': scheduledToday['change']?.toInt() ?? 0,
      'completion_rate': completionRate['value'] ?? 0.0,
      'completion_rate_change': completionRate['change']?.toInt() ?? 0,
    };
  }

  // Header statistics
  Map<String, dynamic> getHeaderStats() {
    return {
      'total_projects': _activeProjects.length,
      'active_projects': _activeProjects.where((p) => p['status'] == 'in_progress').length,
      'completed_today': _recentActivities.where((a) => a['status'] == 'completed').length,
      'alerts': _activeProjects.where((p) => p['status'] == 'at_risk').length,
    };
  }

  // Load recent activities from Supabase
  Future<void> loadRecentActivities() async {
    try {
      final response = await SupaFlow.client
          .from('recent_activity')
          .select('*')
          .order('activity_time', ascending: false)
          .limit(20);
      
      if (response != null) {
        _recentActivities = (response as List).map((item) {
          final activity = item as Map<String, dynamic>;
          final activityTime = DateTime.tryParse(activity['activity_time'] ?? '');
          final timeAgo = activityTime != null 
              ? _getTimeAgo(activityTime)
              : 'Unknown time';
              
          return {
            'project': activity['deal_id'] ?? 'Unknown Project',
            'activity': '${activity['activity_type'] ?? 'Activity'}: ${activity['reference'] ?? 'No reference'}',
            'status': _mapActivityStatus(activity['activity_type']),
            'time': timeAgo,
            'performed_by': activity['performed_by'] ?? 'System',
          };
        }).toList();
      }
      _isLoadingActivities = false;
    } catch (e) {
      print('Error loading recent activities: $e');
      _isLoadingActivities = false;
    }
  }

  // Load active projects from deals table
  Future<void> loadActiveProjects() async {
    try {
      final response = await SupaFlow.client
          .from('deals')
          .select('*')
          .neq('project_status', 'completed')
          .order('start_date', ascending: false)
          .limit(10);
      
      if (response != null) {
        _activeProjects = (response as List).map((item) {
          final deal = item as Map<String, dynamic>;
          final progress = _calculateProgress(deal);
          
          return {
            'name': deal['deal'] ?? 'Unknown Project',
            'status': _mapProjectStatus(deal['project_status']),
            'progress': progress,
            'dueDate': deal['end_date'] ?? '',
            'address': deal['address'] ?? '',
            'assigned': deal['assigned'] ?? 'Unassigned',
          };
        }).toList();
      }
      _isLoadingProjects = false;
    } catch (e) {
      print('Error loading active projects: $e');
      _isLoadingProjects = false;
    }
  }

  // Load dashboard metrics
  Future<void> loadDashboardMetrics() async {
    try {
      final response = await SupaFlow.client
          .from('dashboard_metrics_view')
          .select('*')
          .order('metric_name');
      
      if (response != null) {
        _dashboardMetrics = (response as List).map((item) {
          final metric = item as Map<String, dynamic>;
          return {
            'name': metric['metric_name'] ?? 'Unknown Metric',
            'value': metric['metric_value'] ?? 0.0,
            'type': metric['metric_type'] ?? 'number',
            'unit': metric['unit'] ?? '',
            'trend': metric['trend_direction'] ?? 'neutral',
            'change': metric['change_percentage'] ?? 0.0,
            'category': metric['category'] ?? 'general',
          };
        }).toList();
      }
      _isLoadingMetrics = false;
    } catch (e) {
      print('Error loading dashboard metrics: $e');
      _isLoadingMetrics = false;
    }
  }

  // Helper methods for data processing
  String _getTimeAgo(DateTime activityTime) {
    final now = DateTime.now();
    final difference = now.difference(activityTime);
    
    if (difference.inMinutes < 1) {
      return 'Just now';
    } else if (difference.inMinutes < 60) {
      return '${difference.inMinutes} min ago';
    } else if (difference.inHours < 24) {
      return '${difference.inHours} hr ago';
    } else {
      return '${difference.inDays} days ago';
    }
  }

  String _mapActivityStatus(String? activityType) {
    switch (activityType?.toLowerCase()) {
      case 'completion':
      case 'completed':
        return 'completed';
      case 'start':
      case 'started':
        return 'in_progress';
      case 'issue':
      case 'problem':
        return 'at_risk';
      case 'attention':
      case 'review':
        return 'needs_attention';
      default:
        return 'on_track';
    }
  }

  String _mapProjectStatus(String? status) {
    switch (status?.toLowerCase()) {
      case 'active':
      case 'in_progress':
        return 'in_progress';
      case 'on_track':
        return 'on_track';
      case 'attention':
      case 'needs_attention':
        return 'needs_attention';
      case 'at_risk':
      case 'delayed':
        return 'at_risk';
      default:
        return 'on_track';
    }
  }

  double _calculateProgress(Map<String, dynamic> deal) {
    // Simple progress calculation based on dates
    final startDate = DateTime.tryParse(deal['start_date'] ?? '');
    final endDate = DateTime.tryParse(deal['end_date'] ?? '');
    final now = DateTime.now();
    
    if (startDate == null || endDate == null) return 0.0;
    if (now.isBefore(startDate)) return 0.0;
    if (now.isAfter(endDate)) return 1.0;
    
    final totalDuration = endDate.difference(startDate).inDays;
    final elapsed = now.difference(startDate).inDays;
    
    return (elapsed / totalDuration).clamp(0.0, 1.0);
  }

  // Load all data
  Future<void> loadAllData() async {
    await Future.wait([
      loadRecentActivities(),
      loadActiveProjects(),
      loadDashboardMetrics(),
    ]);
  }

  @override
  void initState(BuildContext context) {
    // Load live data on initialization
    loadAllData();
  }

  @override
  void dispose() {
    backgroundAnimationController.dispose();
  }
} 