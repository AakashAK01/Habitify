import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          IconButton(
                            icon: Icon(
                              Icons.school,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.leaderboard,
                            ),
                            onPressed: () {},
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
                  padding: EdgeInsets.all(5),
                  height: 35,
                  width: 133,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue.shade900,
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.inbox),
                      Center(
                        child: const Text(
                          "  All Habits  ",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                /*TextField(
                  "All Habits",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),*/

                // set an icon or image
                // set your search bar setting
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
