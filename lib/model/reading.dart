import 'dart:convert';

import 'package:aquaculture/redux/actions.dart';
import 'package:aquaculture/redux/app_state.dart';
import 'package:aquaculture/utils/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:web_socket_channel/io.dart';

class Reading {
  String id, deviceNo, temperature, turbidity, dissolvedOxygen, ammonia, ph;

  Reading(this.id, this.deviceNo, this.temperature, this.turbidity,
      this.dissolvedOxygen, this.ammonia, this.ph);

  static getDeviceReading(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    var user = sharedPreferences.getString('user');
    if (user != null) {
      var userData = json.decode(user);
      var res = CallApi().authenticatedGetRequest(
          'api/v1/device-info?device_no=${userData["device_no"]}');
      if (res != null) {
        // TODO: update redux state accordingly

        StoreProvider.of<AppState>(context).dispatch(UpdateReadingAction(null));
      }
    }
  }

  static void readingWebSocket(BuildContext context) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    var user = sharedPreferences.getString('user');
    if (user != null) {
      var userData = json.decode(user);
      final channel =
          IOWebSocketChannel.connect('${CallApi.socketURL}ws/device-reading/2');

      channel.stream.listen((message) {
        print(message);
        // print(message['device']);
        var data = json.decode(message)['reading'];
        StoreProvider.of<AppState>(context).dispatch(UpdateReadingAction(
            Reading(
                data['id'].toString(),
                data['device_no'].toString(),
                data['temperature'].toString(),
                data['turbidity'].toString(),
                data['dissolved_oxygen'].toString(),
                data['ammonia'].toString(),
                data['ph'].toString())));
        // store.dispatch(WebSocketMessageReceivedAction(message));
      });
    }
  }
}
