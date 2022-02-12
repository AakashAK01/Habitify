import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class BadHabitPage extends StatefulWidget {
  const BadHabitPage({Key? key}) : super(key: key);

  @override
  _BadHabitPageState createState() => _BadHabitPageState();
}

class _BadHabitPageState extends State<BadHabitPage> {
  DateTime? date = null;
  String limit = "";
  String startDate = "Start Today";
  String limitController1 = "1",
      limitController2 = "times",
      limitController3 = "per day";

  void datePicker() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: date == null ? DateTime.now() : date!,
        firstDate: DateTime.now(),
        lastDate: DateTime(2100));
    if (pickedDate != null) {
      date = pickedDate;
      setState(() {});
      var dateString = pickedDate.difference(DateTime.now()).inDays.toString();
      startDate = "Start In " + dateString + " Days";
    }
  }

  void cupertinoPicker() {
    int value1 = 0, v2 = 0, value3 = 0;
    String text1 = "", text2 = "", text3 = "";
    List<Text> times = [Text("times"), Text("mins")],
        perList = [Text("per day"), Text("per week"), Text("per month")];
    List<Text> timesNumber = [], minsNumber = [];
    for (var i = 1; i <= 100; i++) {
      timesNumber.add(Text(i.toString()));
    }
    for (var i = 5; i < 1200; i += 5) {
      minsNumber.add(Text(i.toString()));
    }
    showCupertinoModalPopup(
        context: context,
        builder: (BuildContext builder) {
          return Container(
            height: MediaQuery.of(context).copyWith().size.height * 0.5,
            color: Colors.white,
            child: Row(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).copyWith().size.height * 0.4,
                  width: MediaQuery.of(context).copyWith().size.width * 0.3,
                  child: CupertinoPicker(
                    itemExtent: 35,
                    onSelectedItemChanged: (value1) {
                      Text text1 =
                          v2 == 0 ? timesNumber[value1] : minsNumber[value1];
                      setState(() {
                        limitController1 = text1.data.toString();
                      });
                    },
                    children: (v2 == 0)
                        ? timesNumber
                            .map((item) => Center(
                                  child: Text(item.data.toString()),
                                ))
                            .toList()
                        : minsNumber
                            .map((item) => Center(
                                  child: Text(item.data.toString()),
                                ))
                            .toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).copyWith().size.height * 0.4,
                  width: MediaQuery.of(context).copyWith().size.width * 0.3,
                  child: CupertinoPicker(
                    itemExtent: 35,
                    onSelectedItemChanged: (value2) {
                      Text text2 = times[value2];
                      setState(() {
                        v2 = value2;
                        limitController2 = text2.data.toString();
                      });
                    },
                    children: times
                        .map((item) => Center(
                              child: Text(item.data.toString()),
                            ))
                        .toList(),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).copyWith().size.height * 0.4,
                  width: MediaQuery.of(context).copyWith().size.width * 0.3,
                  child: CupertinoPicker(
                    itemExtent: 35,
                    onSelectedItemChanged: (value3) {
                      Text text3 = perList[value3];
                      setState(() {
                        limitController3 = text3.data.toString();
                      });
                    },
                    children: perList
                        .map((item) => Center(
                              child: Text(item.data.toString()),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context);
                    });
                  },
                  icon: Icon(Icons.cancel),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.blue,
                    textStyle: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            GestureDetector(
              child: Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(
                      Icons.carpenter_sharp,
                      size: 20,
                      color: Colors.blue.shade700,
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      padding: EdgeInsets.all(20),
                      primary: Colors.blue.shade100,
                      onPrimary: Colors.black,
                    ),
                  ),
                  Flexible(
                      child: TextField(
                    style: TextStyle(fontSize: 25, height: 1.5),
                    decoration: InputDecoration(
                      hintText: "  Name",
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
                child: Row(
                  children: [
                    Icon(
                      Icons.my_location,
                      size: 40,
                    ),
                    Text(
                      "  No More Than $limitController1 $limitController2 $limitController3",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                onTap: () {
                  cupertinoPicker();
                }),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
              child: Row(
                children: [
                  Icon(
                    Icons.calendar_today,
                    size: 35,
                  ),
                  Text(
                    "  $startDate",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  /*Flexible(
                        child: TextField(
                          readOnly: true,
                          controller: startDateController,
                        )
                    )*/
                ],
              ),
              onTap: datePicker,
            ),
          ],
        ),
      )),
    );
  }
}
