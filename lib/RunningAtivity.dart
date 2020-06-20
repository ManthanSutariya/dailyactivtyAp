import 'package:flutter/material.dart';

getRunningActivity(context) {
  var Height = MediaQuery.of(context).size.height;
  var Width = MediaQuery.of(context).size.width;
  var textSize = MediaQuery.textScaleFactorOf(context);

  return Container(
    height: MediaQuery.of(context).size.height / 6,
    decoration: BoxDecoration(
      color: Color.fromRGBO(54, 56, 104, 1),
      borderRadius: BorderRadius.all(
        Radius.circular(textSize*15),
      ),
    ),
    child: Padding(
      padding:  EdgeInsets.all(textSize*20),
      child: Row(
        children: <Widget>[
          _runningBar(context,
              icon: Icons.location_on,
              color: Colors.blue,
              text: '8.32',
              subtext: 'Kilometer'),
          _runningBar(context,
              icon: Icons.timelapse,
              color: Colors.lightGreen,
              text: '1.30',
              subtext: 'Hour'),
          _runningBar(context,
              icon: Icons.directions_run,
              color: Colors.redAccent,
              text: '5.25',
              subtext: 'Speed'),
        ],
      ),
    ),
  );
}

_runningBar(context ,{IconData icon, Color color, String text, String subtext}) {
  var Height = MediaQuery.of(context).size.height;
  var Width = MediaQuery.of(context).size.width;
  var textSize = MediaQuery.textScaleFactorOf(context);
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: textSize*30),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Icon(
          icon,
          size: textSize*35,
          color: color,
        ),
        Text(
          '$text',
          style: TextStyle(
              fontSize: textSize*20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(
          '$subtext',
          style: TextStyle(fontSize:textSize*15, color: Colors.white70),
        )
      ],
    ),
  );
}
