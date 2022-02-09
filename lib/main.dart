import 'package:flutter/material.dart';
import 'package:project_habitify/screens/new_area.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _hasbeenpressed = false;
  void _press() {
    setState(() {
      _hasbeenpressed = !_hasbeenpressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade700,
        child: Icon(
          Icons.add,
          size: 35,
        ),
        onPressed: () {},
      ),
      appBar: AppBar(
        toolbarHeight: 150.10,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(10),
            color: Colors.white, // set your color
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "TODAY",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w700,
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        child: Row(
                      children: [
                        Text(
                          "My Journal",
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.create_rounded),
                        ),
                      ],
                    )),
                    Container(
                      child: Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.school,
                              color: Colors.blue.shade700,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              primary: Colors.blue.shade100,
                              onPrimary: Colors.black,
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.leaderboard,
                              color: Colors.blue.shade700,
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: CircleBorder(),
                              padding: EdgeInsets.all(10),
                              primary: Colors.blue.shade100,
                              onPrimary: Colors.black,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 40,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _press();
                          });
                        },
                        child: CustomCards(
                          hasbeenpressed: _hasbeenpressed,
                          header: "All Habits",
                          icons: Icons.inbox,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _press();
                          });
                        },
                        child: CustomCards(
                          hasbeenpressed: _hasbeenpressed,
                          header: "Morning",
                          icons: Icons.wb_sunny,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const NewArea();
                                },
                              ),
                            );
                          });
                        },
                        child: CustomCards(
                          hasbeenpressed: _hasbeenpressed,
                          header: "New Area",
                          icons: Icons.add,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        height: 70,
        alignment: Alignment.center,
        child: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.view_agenda,
                    ),
                    onPressed: () {},
                  ),
                  Text(
                    "Journal",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.pie_chart_outline,
                    ),
                    onPressed: null,
                  ),
                  Text(
                    "Progress",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.add_box,
                    ),
                    onPressed: null,
                  ),
                  Text(
                    "Challenges",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.star_border,
                    ),
                    onPressed: null,
                  ),
                  Text(
                    "Upgrade",
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.settings_outlined,
                    ),
                    onPressed: null,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 10,
                    ),
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

class CustomCards extends StatelessWidget {
  const CustomCards({
    Key? key,
    required bool hasbeenpressed,
    required this.header,
    required this.icons,
  })  : _hasbeenpressed = hasbeenpressed,
        super(key: key);

  final bool _hasbeenpressed;
  final String header;
  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),

        //color: _hasbeenpressed ? Colors.blue.shade700 : Colors.white60,
      ),
      child: Container(
        width: 120,
        height: 150,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: _hasbeenpressed ? Colors.blue.shade700 : Colors.white60,
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icons),
            Text(
              header,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
            ),
          ],
        ),
        //)
      ),
    );
  }
}
