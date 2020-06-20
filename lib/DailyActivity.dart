import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

var now = DateTime.now();
var curDate = "${now.day} : ${now.month} : ${now.year}";
var weekDay = DateFormat('EEEEE', 'en_US').format(now).toString();
var nextDay = now.add(Duration(days: 1));

String convertToDateDay({date}) {
  return DateFormat('EEEEE', 'en_US').format(date).toString();
}

class GetDates extends StatefulWidget {
  @override
  _GetDatesState createState() => _GetDatesState();
}

class _GetDatesState extends State<GetDates> {
  int clickedIndex = 0;

  onDateBoxTap(int tapIndex) {
    setState(() {
      clickedIndex = tapIndex;
    });
  }

  @override
  Widget build(BuildContext context) {

    var textSize = MediaQuery.textScaleFactorOf(context);
    return SingleChildScrollView(
      child: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(
                height: MediaQuery
                    .of(context)
                    .size
                    .width / 4
                ,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, index) {
                    return DateBox(
                      date: '${now.day + index}',
                      day: '${convertToDateDay(
                        date: DateTime.now().add(
                          Duration(days: index),
                        ),
                      )}',
                      clickedIndex: clickedIndex,
                      tileIndex: index,
                      onDateBoxPressed: onDateBoxTap,
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

class DateBox extends StatelessWidget {
  String date;
  String day;
  int tileIndex;
  int clickedIndex;
  Function onDateBoxPressed;

  DateBox({this.date,
    this.day,
    this.tileIndex,
    this.clickedIndex,
    this.onDateBoxPressed});



  @override
  Widget build(BuildContext context) {
    var textSize = MediaQuery.textScaleFactorOf(context);

    return GestureDetector(
      onTap: () {
        onDateBoxPressed(tileIndex);
      },
      child: Container(
        height: MediaQuery
            .of(context)
            .size
            .width / 4,
        width: MediaQuery
            .of(context)
            .size
            .width / 4,
        margin: EdgeInsets.all(textSize*5),
        decoration: BoxDecoration(
          color: tileIndex == clickedIndex
              ? Color.fromRGBO(24, 210, 225, 1)
              : Color.fromRGBO(54, 56, 104, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(textSize*19),
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$date',
                style: TextStyle(fontSize: textSize*30, color: Colors.white),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '$day',
                style: TextStyle(fontSize: textSize*15, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
