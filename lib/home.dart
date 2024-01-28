import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
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
                    Text(
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
                    head: "38",
                    subhead: 'Temperature',
                  ),
                ),
                Expanded(
                  child: makeItem(
                    head: "100nt",
                    subhead: 'oxygen',
                  ),
                )
              ],
            )),
            SliverToBoxAdapter(
  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Container(
      decoration: BoxDecoration(
        color: Colors.indigo[300], // Grey background color
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Table(
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: [
              // First Row
              TableRow(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '1000L',
                      style: TextStyle(color: Colors.white, fontSize: 18), // Adjust the font size
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '60ntu',
                      style: TextStyle(color: Colors.white, fontSize: 18), // Adjust the font size
                    ),
                  ),
                ],
              ),

              // First Row Labels
              TableRow(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      'Water Level',
                      style: TextStyle(color: Colors.white, fontSize: 16), // Adjust the font size
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      'Turbidity Level',
                      style: TextStyle(color: Colors.white, fontSize: 16), // Adjust the font size
                    ),
                  ),
                ],
              ),

              // Second Row
              TableRow(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '100mcg/l',
                      style: TextStyle(color: Colors.white, fontSize: 18), // Adjust the font size
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '7',
                      style: TextStyle(color: Colors.white, fontSize: 18), // Adjust the font size
                    ),
                  ),
                ],
              ),

              // Second Row Labels
              TableRow(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      'Ammonia Value',
                      style: TextStyle(color: Colors.white, fontSize: 16), // Adjust the font size
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    child: Text(
                      'PH Value',
                      style: TextStyle(color: Colors.white, fontSize: 16), // Adjust the font size
                    ),
                  ),
                ],
              ),
            ],
          ),
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
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: const Padding(
                    padding: const EdgeInsets.all(20.0),
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
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: const Padding(
                    padding: const EdgeInsets.all(20.0),
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
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: const Padding(
                    padding: const EdgeInsets.all(20.0),
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
  }

  Widget makeItem({head, subhead}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        // color: Colors.grey,
        height: 180,
        width: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
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
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    subhead,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
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
