import 'package:aquaculture/model/reading.dart';
import 'package:aquaculture/redux/app_state.dart';
import 'package:aquaculture/utils/api.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool switchOne = false, switchTwo = false;

  handleSwitchRequest(String message) {
    var res = CallApi()
        .authenticatedPostRequest({'message': message}, 'api/v1/switch-motor');
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Reading?>(
        converter: (store) => store.state.reading,
        builder: (context, reading) {
          return Scaffold(
            body: SafeArea(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Home',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          Image.asset(
                            'assets/lo.png',
                            width: 24, // Adjust the width as needed
                            height: 24, // Adjust the height as needed
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: makeItem(
                          head:
                              "${reading != null ? reading.temperature.toString() : '0'} C",
                          subhead: 'Temperature',
                        ),
                      ),
                      Expanded(
                        child: makeItem(
                          head: (reading != null
                                      ? reading.turbidity.toString()
                                      : '0') ==
                                  '0'
                              ? 'LOW'
                              : 'HIGH',
                          subhead: 'Turbidity',
                        ),
                      ),
                      Expanded(
                        child: makeItem(
                          head: reading != null ? reading.ph : '0',
                          subhead: 'PH Value',
                        ),
                      )
                    ],
                  )),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[300], // Grey background color
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Switch One',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Switch(
                                    value: switchOne,
                                    onChanged: (value) {
                                      // Handle switch state change
                                      setState(() {
                                        switchOne = value;
                                      });
                                      handleSwitchRequest(value ? 'm1' : 'm0');
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[300], // Grey background color
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    'Switch Two',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Switch(
                                    value: switchTwo,
                                    onChanged: (value) {
                                      // Handle switch state change
                                      handleSwitchRequest(value ? 'm3' : 'm2');
                                      setState(() {
                                        switchTwo = value;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[900], // Grey background color
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Temperature is Good For Fish",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[900], // Grey background color
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Temperature is Good For Fish",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.indigo[900], // Grey background color
                          borderRadius:
                              BorderRadius.circular(10), // Rounded corners
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Temperature is Good For Fish",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget makeItem({head, subhead}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // color: Colors.grey,
        height: 130,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(colors: [
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ])),
          child: Column(
            children: [
              Text(
                head,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    subhead,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
