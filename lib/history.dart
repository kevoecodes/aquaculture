import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
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
                      'This Month',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Table
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            // First Row
                            TableRow(
                              children: [
                                Text('Week 1',
                                    style: TextStyle(color: Colors.white)),
                                Text('Temp',
                                    style: TextStyle(color: Colors.white)),
                                Text('Ovy',
                                    style: TextStyle(color: Colors.white)),
                                Text('PH',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),

                            // Second Row
                            TableRow(
                              children: [
                                SizedBox(), // Empty cell for Week 1
                                Text('36',
                                    style: TextStyle(color: Colors.white)),
                                Text('40%',
                                    style: TextStyle(color: Colors.white)),
                                Text('7.2',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),

                        // See more
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more...',
                              style: TextStyle(
                                color: Colors.blue, // or your preferred color
                                decoration: TextDecoration.underline,
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

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo[900], // Grey background color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Table
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            // First Row
                            TableRow(
                              children: [
                                Text('Week 1',
                                    style: TextStyle(color: Colors.white)),
                                Text('Temp',
                                    style: TextStyle(color: Colors.white)),
                                Text('Ovy',
                                    style: TextStyle(color: Colors.white)),
                                Text('PH',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),

                            // Second Row
                            TableRow(
                              children: [
                                SizedBox(), // Empty cell for Week 1
                                Text('36',
                                    style: TextStyle(color: Colors.white)),
                                Text('40%',
                                    style: TextStyle(color: Colors.white)),
                                Text('7.2',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),

                        // See more
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more...',
                              style: TextStyle(
                                color: Colors.blue, // or your preferred color
                                decoration: TextDecoration.underline,
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

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo[900], // Grey background color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Table
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            // First Row
                            TableRow(
                              children: [
                                Text('Week 1',
                                    style: TextStyle(color: Colors.white)),
                                Text('Temp',
                                    style: TextStyle(color: Colors.white)),
                                Text('Ovy',
                                    style: TextStyle(color: Colors.white)),
                                Text('PH',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),

                            // Second Row
                            TableRow(
                              children: [
                                SizedBox(), // Empty cell for Week 1
                                Text('36',
                                    style: TextStyle(color: Colors.white)),
                                Text('40%',
                                    style: TextStyle(color: Colors.white)),
                                Text('7.2',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),

                        // See more
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more...',
                              style: TextStyle(
                                color: Colors.blue, // or your preferred color
                                decoration: TextDecoration.underline,
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



            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Last Month',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Table
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            // First Row
                            TableRow(
                              children: [
                                Text('Week 1',
                                    style: TextStyle(color: Colors.white)),
                                Text('Temp',
                                    style: TextStyle(color: Colors.white)),
                                Text('Ovy',
                                    style: TextStyle(color: Colors.white)),
                                Text('PH',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),

                            // Second Row
                            TableRow(
                              children: [
                                SizedBox(), // Empty cell for Week 1
                                Text('36',
                                    style: TextStyle(color: Colors.white)),
                                Text('40%',
                                    style: TextStyle(color: Colors.white)),
                                Text('7.2',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),

                        // See more
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more...',
                              style: TextStyle(
                                color: Colors.blue, // or your preferred color
                                decoration: TextDecoration.underline,
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

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo[900], // Grey background color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Table
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            // First Row
                            TableRow(
                              children: [
                                Text('Week 1',
                                    style: TextStyle(color: Colors.white)),
                                Text('Temp',
                                    style: TextStyle(color: Colors.white)),
                                Text('Ovy',
                                    style: TextStyle(color: Colors.white)),
                                Text('PH',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),

                            // Second Row
                            TableRow(
                              children: [
                                SizedBox(), // Empty cell for Week 1
                                Text('36',
                                    style: TextStyle(color: Colors.white)),
                                Text('40%',
                                    style: TextStyle(color: Colors.white)),
                                Text('7.2',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),

                        // See more
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more...',
                              style: TextStyle(
                                color: Colors.blue, // or your preferred color
                                decoration: TextDecoration.underline,
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

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo[900], // Grey background color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Table
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            // First Row
                            TableRow(
                              children: [
                                Text('Week 1',
                                    style: TextStyle(color: Colors.white)),
                                Text('Temp',
                                    style: TextStyle(color: Colors.white)),
                                Text('Ovy',
                                    style: TextStyle(color: Colors.white)),
                                Text('PH',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),

                            // Second Row
                            TableRow(
                              children: [
                                SizedBox(), // Empty cell for Week 1
                                Text('36',
                                    style: TextStyle(color: Colors.white)),
                                Text('40%',
                                    style: TextStyle(color: Colors.white)),
                                Text('7.2',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),

                        // See more
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more...',
                              style: TextStyle(
                                color: Colors.blue, // or your preferred color
                                decoration: TextDecoration.underline,
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

            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.indigo[900], // Grey background color
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        // Table
                        Table(
                          defaultVerticalAlignment:
                              TableCellVerticalAlignment.middle,
                          children: [
                            // First Row
                            TableRow(
                              children: [
                                Text('Week 1',
                                    style: TextStyle(color: Colors.white)),
                                Text('Temp',
                                    style: TextStyle(color: Colors.white)),
                                Text('Ovy',
                                    style: TextStyle(color: Colors.white)),
                                Text('PH',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),

                            // Second Row
                            TableRow(
                              children: [
                                SizedBox(), // Empty cell for Week 1
                                Text('36',
                                    style: TextStyle(color: Colors.white)),
                                Text('40%',
                                    style: TextStyle(color: Colors.white)),
                                Text('7.2',
                                    style: TextStyle(color: Colors.white)),
                              ],
                            ),
                          ],
                        ),

                        // See more
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'See more...',
                              style: TextStyle(
                                color: Colors.blue, // or your preferred color
                                decoration: TextDecoration.underline,
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

          
          ],
        ),
      ),
    );
  }
}
