import 'package:aquaculture/redux/actions.dart';
import 'package:aquaculture/redux/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shared_preferences/shared_preferences.dart';

class User {
  final String id, fullName, email, cellphone, nationalId, address;
  // final int status;

  User(this.id, this.fullName, this.email, this.cellphone, this.nationalId,
      this.address);

  static void logout(BuildContext context) async {
    StoreProvider.of<AppState>(context)
        .dispatch(UpdateAuthenticatedAction(false));
    StoreProvider.of<AppState>(context).dispatch(UpdateUserAction(null));
    SharedPreferences localStorage = await SharedPreferences.getInstance();

    // todo unregister notifications to null user

    localStorage.remove('token');
    localStorage.remove('user');
    localStorage.remove('notifications');
  }

  static void login(BuildContext context, userData) async {
    StoreProvider.of<AppState>(context).dispatch(UpdateUserAction(User(
        userData['id'].toString(),
        '${userData['first_name']} ${userData['last_name']}',
        userData['email'],
        userData['email'],
        userData['email'].toString(),
        userData['address'])));

    StoreProvider.of<AppState>(context)
        .dispatch(UpdateAuthenticatedAction(true));
  }
}
