import 'package:flutter/material.dart';

getGymExcercizeDetail(context) {

  var Height = MediaQuery.of(context).size.height;
  var Width = MediaQuery.of(context).size.width;
  var textSize = MediaQuery.textScaleFactorOf(context);

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Container(
        height: MediaQuery.of(context).size.height / 5,
        width: MediaQuery.of(context).size.width / 3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(textSize*20),
          ),
          color: Color.fromRGBO(54, 56, 104, 1),
        ),
        child: Padding(
          padding:  EdgeInsets.all(textSize*20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                Icons.mood,
                size: textSize*35,
                color: Colors.red,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width / 25,
              ),
              Row(
                children: <Widget>[
                  Text(
                    '88',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: textSize*30,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 35,
                  ),
                  Text(
                    'bpm',
                    style: TextStyle(fontSize: textSize*15, color: Colors.white70),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      SizedBox(
        width: Width/20,
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width / 2 * 1.1,
            decoration: BoxDecoration(
              color: Color.fromRGBO(54, 56, 104, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(textSize*15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(textSize*10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '450',
                        style: TextStyle(fontSize: textSize*20, color: Colors.white),
                      ),
                      SizedBox(
                        height: textSize*10,
                      ),
                      Text(
                        'Steps',
                        style: TextStyle(fontSize:  textSize*14, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width:  textSize*30,
                ),
                Icon(
                  Icons.bubble_chart,
                  size: textSize*60,
                  color: Colors.green,
                )
              ],
            ),
          ),
          SizedBox(
            height: textSize*10,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 11,
            width: MediaQuery.of(context).size.width / 2 * 1.1,
            decoration: BoxDecoration(
              color: Color.fromRGBO(54, 56, 104, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(textSize*15),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        '330',
                        style: TextStyle(fontSize: textSize*20, color: Colors.white),
                      ),
                      SizedBox(
                        height: textSize*10,
                      ),
                      Text(
                        'Calories',
                        style: TextStyle(fontSize: textSize*14, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: textSize*35,
                ),
                Icon(
                  Icons.timelapse,
                  size: textSize*60,
                  color: Colors.blueAccent,
                )
              ],
            ),
          ),
        ],
      )
    ],
  );
}
