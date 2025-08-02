import '/components/button/button_widget.dart';
import '/components/context_menu/context_menu_widget.dart';
import '/components/tabs/tabs_widget.dart';
import '/components/top_numbers/top_numbers_widget.dart';
import '/flutter_flow/flutter_flow_checkbox_group.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/index.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:sticky_headers/sticky_headers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for CheckboxGroup widget.
  FormFieldController<List<String>>? checkboxGroupValueController;
  List<String>? get checkboxGroupValues => checkboxGroupValueController?.value;
  set checkboxGroupValues(List<String>? v) =>
      checkboxGroupValueController?.value = v;

  // State field(s) for CheckboxListTile widget.
  bool? checkboxListTileValue;
  // Model for TopNumbers component.
  late TopNumbersModel topNumbersModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
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
