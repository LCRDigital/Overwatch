import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/chat_message/chat_message_widget.dart';
import '/components/input/input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  Local state fields for this page.

  List<ChatMessageStruct> chat = [];
  void addToChat(ChatMessageStruct item) => chat.add(item);
  void removeFromChat(ChatMessageStruct item) => chat.remove(item);
  void removeAtIndexFromChat(int index) => chat.removeAt(index);
  void insertAtIndexInChat(int index, ChatMessageStruct item) =>
      chat.insert(index, item);
  void updateChatAtIndex(int index, Function(ChatMessageStruct) updateFn) =>
      chat[index] = updateFn(chat[index]);

  ///  State fields for stateful widgets in this page.

  // Models for ChatMessage dynamic component.
  late FlutterFlowDynamicModels<ChatMessageModel> chatMessageModels1;
  // Model for Input component.
  late InputModel inputModel1;
  // Models for ChatMessage dynamic component.
  late FlutterFlowDynamicModels<ChatMessageModel> chatMessageModels2;
  // Model for Input component.
  late InputModel inputModel2;

  @override
  void initState(BuildContext context) {
    chatMessageModels1 = FlutterFlowDynamicModels(() => ChatMessageModel());
    inputModel1 = createModel(context, () => InputModel());
    chatMessageModels2 = FlutterFlowDynamicModels(() => ChatMessageModel());
    inputModel2 = createModel(context, () => InputModel());
  }

  @override
  void dispose() {
    chatMessageModels1.dispose();
    inputModel1.dispose();
    chatMessageModels2.dispose();
    inputModel2.dispose();
  }
}
