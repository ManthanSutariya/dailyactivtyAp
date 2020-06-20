import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'DailyActivity.dart';
import 'RunningAtivity.dart';
import 'GymDetail.dart';
import 'package:polygon_clipper/polygon_border.dart';
import 'package:polygon_clipper/polygon_clipper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var Height = MediaQuery.of(context).size.height;
    var Width = MediaQuery.of(context).size.width;
    var textSize = MediaQuery.textScaleFactorOf(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(40, 43, 78, 1),
        body: Padding(
          padding: EdgeInsets.all(Width / 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.symmetric(vertical: Width / 35),
                    child: Text(
                      '$curDate',
                      style: TextStyle(
                          fontSize: textSize * 17, color: Colors.white),
                    ),
                  ),
                  CircleAvatar(
                    maxRadius: Width / 13,
                    backgroundImage: AssetImage('assets/1.jpg'),
                  ),
                ],
              ),
              Text(
                'Daily Activity',
                style: TextStyle(fontSize: textSize * 30, color: Colors.white),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 12,
              ),
              GetDates(),
              SizedBox(
                height: MediaQuery.of(context).size.width / 12,
              ),
              Row(
                children: <Widget>[
                  Text(
                    'Running',
                    style: TextStyle(
                        fontSize: textSize * 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: Width / 20,
                  ),
                  CircleAvatar(
                    maxRadius: textSize * 3,
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    width: Width / 49,
                  ),
                  Text(
                    'Last 24 Hour',
                    style: TextStyle(
                      fontSize: textSize * 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: Width / 55,
              ),
              getRunningActivity(context),
              SizedBox(
                height: MediaQuery.of(context).size.width / 11,
              ),
              Text(
                'Gym',
                style: TextStyle(
                    fontSize: textSize * 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 15,
              ),
              getGymExcercizeDetail(context),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.directions,
                    size: textSize * 25,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.wb_sunny,
                    size: textSize * 25,
                    color: Colors.white,
                  ),
                  Container(
                    height: Width / 7,
                    child: ClipPolygon(
                      sides: 6,
                      rotate: 0.0,
                      borderRadius: textSize * 10,
                      child: Container(
                        color: Colors.blue,
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.event_note,
                    size: textSize * 25,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.settings,
                    size: textSize * 25,
                    color: Colors.white,
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
