import 'package:aquaculture/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:redux/redux.dart';
import 'package:web_socket_channel/io.dart';

// class ConnectWebSocketAction {
//   ConnectWebSocketAction();
// }

// class WebSocketMessageReceivedAction {
//   final String message;

//   WebSocketMessageReceivedAction(this.message);
// }

// void webSocketMiddleware(Store<AppState> store, action, NextDispatcher next) {
//   if (action is ConnectWebSocketAction) {
//     // Connect to the WebSocket
//     final channel = IOWebSocketChannel.connect('ws://your-backend-url');

//     // Listen for incoming messages
//     channel.stream.listen((message) {
//       store.dispatch(WebSocketMessageReceivedAction(message));
//     });
//   }

//   next(action);
// }

