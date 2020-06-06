
import 'package:flutter/material.dart';

class ForeCast extends StatefulWidget {
  ForeCast({this.city,this.forecastDate,this.description});
  final String city;
  final String forecastDate;
  final String description;
  @override
  // ForeCastState createState() => ForeCastState();
  State<StatefulWidget> createState() {
    return ForeCastState();
  }
  
}

class ForeCastState extends State<ForeCast>{
  @override
  Widget build(BuildContext context) {
    
        return Container(
          child:
           Card(
             elevation: 18.0,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text(widget.city,
               style:TextStyle(
                 fontSize: 18.0,
               ) ,
               ),
              Text(widget.forecastDate),
              Icon(
                Icons.sentiment_satisfied,
                color: Colors.yellow,
                size: 40.0,
              ),
              Text(widget.description)
          ],
        ),
            ),
           )
    );
  }
  
}