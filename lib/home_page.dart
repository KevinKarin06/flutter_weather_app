
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/forecast.dart';


class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 fetc() async {
 String url = 'https://type.fit/api/quotes';
 try{
   var response = await http.get(url);
print('Response status: ${response.statusCode}');
print('Response body: ${response.body}');
return response;
 }catch(err){
   print('where is the fucking error printed $err');
 }

}

String _today = 'Tue 22 March 2020';
String _text = 'Douala'.toUpperCase();

   void changeText()async {
     fetc();
     var data = await fetc();
     print(data);
     print('just print something');
        setState(()  {
            this._text = data;   
             });
  }


  getQuery(search){
    print(search);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(_text,
                    style:TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    )),
                    Text(_today,
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                    ),
                    Icon(Icons.sentiment_very_satisfied,
                    color:Colors.yellow,
                    size: 40.0,
                    ),
                    FlatButton(onPressed: changeText, child: Text('Press Me'))
                                      ],
                                    ),
                                  ),
                                   ForeCast(city: 'Douala',forecastDate: 'Wed 23 March',description: 'rainny',),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                    onSubmitted: getQuery,
                                    decoration: InputDecoration( 
                                      border: OutlineInputBorder(),
                                      labelText: 'Search',
                                    ),
                                    ),
                                  ),
                                ],
                              ),
                          ),
                        );
                      }
                    
}
