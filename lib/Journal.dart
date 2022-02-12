import 'dart:ui';
import 'package:project_habitify/BadHabit.dart';
import 'package:project_habitify/GoodHabit.dart';
import 'package:project_habitify/screens/new_area.dart';
import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({Key? key}) : super(key: key);

  @override
  _JournalPageState createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage>
    with SingleTickerProviderStateMixin {
  bool _hasbeenpressed = false;
  void _press() {
    setState(() {
      _hasbeenpressed = !_hasbeenpressed;
    });
  }

  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

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
      floatingActionButton: FloatingActionBubble(
          iconData: Icons.add,
          items: [
            Bubble(
              icon: Icons.block_flipped,
              iconColor: Colors.white,
              title: "Break Bad Habit",
              titleStyle: const TextStyle(fontSize: 18, color: Colors.white),
              bubbleColor: Colors.blue,
              onPress: () {
                _animationController.reverse();
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const BadHabitPage();
                      },
                    ),
                  );
                });
              },
            ),
            Bubble(
              icon: Icons.all_inclusive,
              iconColor: Colors.white,
              title: "Create Good Habit",
              titleStyle: const TextStyle(fontSize: 18, color: Colors.white),
              bubbleColor: Colors.blue,
              onPress: () {
                _animationController.reverse();
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return const GoodHabitPage();
                      },
                    ),
                  );
                });
              },
            ),
          ],
          onPress: () => _animationController.isCompleted
              ? _animationController.reverse()
              : _animationController.forward(),
          iconColor: Colors.white,
          backGroundColor: Colors.blue,
          animation: _animation),
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
