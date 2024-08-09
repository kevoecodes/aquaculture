import 'dart:convert';

import 'package:aquaculture/login.dart';
import 'package:aquaculture/model/user.dart';
import 'package:aquaculture/utils/api.dart';
import 'package:flutter/material.dart';

class MySplashViews extends StatefulWidget {
  @override
  _MySplashViewsState createState() => _MySplashViewsState();
}

class _MySplashViewsState extends State<MySplashViews> {
  getUserFromToken() async {
    var res = await CallApi().authenticatedGetRequest('api/v1/user-from-token');
    if (res != null) {
      if (res.statusCode == 200) {
        var body = json.decode(res!.body);

        // ignore: use_build_context_synchronously
        User.login(context, body['user']);

        // ignore: use_build_context_synchronously
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => const LoginScreen()),
            (Route<dynamic> _) => false);

        return;
      }
    }
    // ignore: use_build_context_synchronously
    User.logout(context);
    Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserFromToken();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/aq.png',
              // width: 100,
              // height: 100,
            ),
            // SvgPicture.asset(
            //   'assets/svg/ngao.svg',
            //   width: 100,
            //   height: 100,
            // ),

            SizedBox(
              height: 15,
            ),
            const Text(
              "AQUACULTURE",
              textAlign: TextAlign.center,
              style: TextStyle(
//                    color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
