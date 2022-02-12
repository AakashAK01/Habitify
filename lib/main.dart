import 'package:flutter/material.dart';
import 'package:project_habitify/Challenges.dart';
import 'package:project_habitify/Journal.dart';
import 'package:project_habitify/Progress.dart';
import 'package:project_habitify/Settings.dart';
import 'package:project_habitify/Upgrade.dart';

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
  int CurrentIndex = 0;
  List<Widget> pages = [
    JournalPage(),
    ProgressPage(),
    ChallengesPage(),
    UpgradePage(),
    SettingsPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[CurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: CurrentIndex,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.black,
        items: const [
          BottomNavigationBarItem(
              label: "Journal", icon: Icon(Icons.view_agenda)),
          BottomNavigationBarItem(
              label: "Progress", icon: Icon(Icons.pie_chart)),
          BottomNavigationBarItem(
              label: "Challenges", icon: Icon(Icons.add_box)),
          BottomNavigationBarItem(
              label: "Upgrade", icon: Icon(Icons.star_border)),
          BottomNavigationBarItem(
              label: "Settings", icon: Icon(Icons.settings_outlined)),
        ],
        onTap: (Index) {
          CurrentIndex = Index;
          setState(() {});
        },
      ),
    );
  }
}
