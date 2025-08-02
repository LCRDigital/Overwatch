import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/chat_message/chat_message_widget.dart';
import '/components/input/input_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'chat_model.dart';
export 'chat_model.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    bool? mountainBackground,
  }) : this.mountainBackground = mountainBackground ?? false;

  final bool mountainBackground;

  static String routeName = 'Chat';
  static String routePath = '/chat';

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  late ChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.addToChat(ChatMessageStruct(
        content: 'Hey! I am your support bot. What do you need help with?',
        isMe: false,
        date: getCurrentTimestamp,
      ));
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Builder(
          builder: (context) {
            if (!widget!.mountainBackground) {
              return Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/Light_Gradient_03.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 28.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final chatItems = _model.chat.toList();

                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(chatItems.length,
                                        (chatItemsIndex) {
                                  final chatItemsItem =
                                      chatItems[chatItemsIndex];
                                  return wrapWithModel(
                                    model: _model.chatMessageModels1.getModel(
                                      chatItemsIndex.toString(),
                                      chatItemsIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChatMessageWidget(
                                      key: Key(
                                        'Keyjlc_${chatItemsIndex.toString()}',
                                      ),
                                      data: chatItemsItem,
                                    ),
                                  );
                                })
                                    .divide(SizedBox(height: 12.0))
                                    .addToStart(SizedBox(height: 16.0))
                                    .addToEnd(SizedBox(height: 16.0)),
                              ),
                            );
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.inputModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: InputWidget(
                          onMessageSent: (content) async {
                            _model.addToChat(ChatMessageStruct(
                              content: content,
                              isMe: true,
                              date: getCurrentTimestamp,
                            ));
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            _model.addToChat(ChatMessageStruct(
                              content: 'You bet it chief!',
                              isMe: false,
                              date: getCurrentTimestamp,
                            ));
                            safeSetState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            } else {
              return Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: MediaQuery.sizeOf(context).height * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/background.jpg',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 60.0, 16.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        decoration: BoxDecoration(),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.safePop();
                              },
                              child: Icon(
                                Icons.chevron_left,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 28.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Builder(
                          builder: (context) {
                            final chatItems = _model.chat.toList();

                            return SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: List.generate(chatItems.length,
                                        (chatItemsIndex) {
                                  final chatItemsItem =
                                      chatItems[chatItemsIndex];
                                  return wrapWithModel(
                                    model: _model.chatMessageModels2.getModel(
                                      chatItemsIndex.toString(),
                                      chatItemsIndex,
                                    ),
                                    updateCallback: () => safeSetState(() {}),
                                    child: ChatMessageWidget(
                                      key: Key(
                                        'Keyfk8_${chatItemsIndex.toString()}',
                                      ),
                                      data: chatItemsItem,
                                    ),
                                  );
                                })
                                    .divide(SizedBox(height: 12.0))
                                    .addToStart(SizedBox(height: 16.0))
                                    .addToEnd(SizedBox(height: 16.0)),
                              ),
                            );
                          },
                        ),
                      ),
                      wrapWithModel(
                        model: _model.inputModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: InputWidget(
                          onMessageSent: (content) async {
                            _model.addToChat(ChatMessageStruct(
                              content: content,
                              isMe: true,
                              date: getCurrentTimestamp,
                            ));
                            safeSetState(() {});
                            await Future.delayed(
                              Duration(
                                milliseconds: 1000,
                              ),
                            );
                            _model.addToChat(ChatMessageStruct(
                              content: 'You bet it chief!',
                              isMe: false,
                              date: getCurrentTimestamp,
                            ));
                            safeSetState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
