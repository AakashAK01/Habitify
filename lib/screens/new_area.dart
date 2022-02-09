import 'package:flutter/material.dart';
import 'package:project_habitify/main.dart';

class NewArea extends StatefulWidget {
  const NewArea({Key? key}) : super(key: key);

  @override
  _NewAreaState createState() => _NewAreaState();
}

class _NewAreaState extends State<NewArea> {
  get onPressed => null;
  //bool isSwitched = false;
  bool viewVisible = true;

  void showWidget() {
    setState(() {
      viewVisible = viewVisible == true ? false : true;
    });
  }

  void hideWidget() {
    setState(() {
      viewVisible = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Row(
                    children: [
                      IconButton(
                        icon: const Icon(Icons.close_rounded),
                        tooltip: MaterialLocalizations.of(context)
                            .closeButtonTooltip,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const MyApp();
                              },
                            ),
                          );
                        },
                      ),
                      Text(
                        "New Area",
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
                  Container(
                    child: TextButton(
                        child: Text(
                          'Save',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {}),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "COLOR",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 50,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Color Enabled",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w500),
                  ),
                  Switch(
                    activeColor: Colors.blueAccent,
                    value: viewVisible,
                    onChanged: (value) {
                      setState(() {
                        value = value == true ? false : true;
                        ;
                        showWidget();
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            Visibility(
              maintainSize: false,
              maintainAnimation: false,
              maintainState: false,
              visible: viewVisible,
              child: Container(
                height: 45,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "UNGROUPED HABITS",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              height: 45,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
