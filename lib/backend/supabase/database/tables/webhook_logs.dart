import '../database.dart';

class WebhookLogsTable extends SupabaseTable<WebhookLogsRow> {
  @override
  String get tableName => 'webhook_logs';

  @override
  WebhookLogsRow createRow(Map<String, dynamic> data) => WebhookLogsRow(data);
}

class WebhookLogsRow extends SupabaseDataRow {
  WebhookLogsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => WebhookLogsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get webhookId => getField<String>('webhook_id')!;
  set webhookId(String value) => setField<String>('webhook_id', value);

  String get source => getField<String>('source')!;
  set source(String value) => setField<String>('source', value);

  int? get transactionNumber => getField<int>('transaction_number');
  set transactionNumber(int? value) =>
      setField<int>('transaction_number', value);

  DateTime get timestamp => getField<DateTime>('timestamp')!;
  set timestamp(DateTime value) => setField<DateTime>('timestamp', value);

  int? get changesProcessed => getField<int>('changes_processed');
  set changesProcessed(int? value) => setField<int>('changes_processed', value);

  dynamic get results => getField<dynamic>('results');
  set results(dynamic value) => setField<dynamic>('results', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
