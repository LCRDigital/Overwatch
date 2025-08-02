import '/components/button/button_widget.dart';
import '/components/context_menu/context_menu_widget.dart';
import '/components/tabs/tabs_widget.dart';
import '/components/top_numbers/top_numbers_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_mountain_widget.dart' show HomePageMountainWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageMountainModel extends FlutterFlowModel<HomePageMountainWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TopNumbers component.
  late TopNumbersModel topNumbersModel;
  // Model for Button component.
  late ButtonModel buttonModel1;
  // Model for Button component.
  late ButtonModel buttonModel2;
  // Model for Tabs component.
  late TabsModel tabsModel;
  // Model for ContextMenu component.
  late ContextMenuModel contextMenuModel;

  @override
  void initState(BuildContext context) {
    topNumbersModel = createModel(context, () => TopNumbersModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    tabsModel = createModel(context, () => TabsModel());
    contextMenuModel = createModel(context, () => ContextMenuModel());
  }

  @override
  void dispose() {
    topNumbersModel.dispose();
    buttonModel1.dispose();
    buttonModel2.dispose();
    tabsModel.dispose();
    contextMenuModel.dispose();
  }
}
