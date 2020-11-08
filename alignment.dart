import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}

class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
    title: "My App",
    home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() =>new _HomePageState();
}




class _HomePageState extends State<HomePage> {
  
  String mytext = "Hello World";
  
  void _changeText(){
  setState((){
    if(mytext.startsWith("H")){
    mytext = "Welcome to my app";
    }
    else
    {
      mytext = "Hello World";
    }
  });
}
  Widget _bodyWidget()
{
  return new Container(
  padding: const EdgeInsets.all(8.0),
  child: new Center(
  child: new Column(
    //align the click button in center
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      new Text(mytext, style: new TextStyle(
      fontSize: 22.0
      ),),
      new RaisedButton(
        child: new Text("Click", style: new TextStyle(
        color: Colors.white,
        ), ),
        onPressed: _changeText,
        color: Colors.green,
      )
    ],
   ),
   ),
  );
}
  @override
  Widget build(BuildContext context)
  {
    return new Scaffold(
    appBar: new AppBar(
    title: new Text("Home Page"),
    ),
      body: _bodyWidget()
    );
  }
}

/* Container provides child:, key:, decoration:, height, margin:, color:, padding:, alignment:, constraints:, foregroundecoration:*/

/*If we want to change the state then we call setState method wich tells our framework to update that widget*/

/* 
 Container,Center, Column, Row are layout.
 Column have two properties
 1. Main Axis (Vertical position)
 2. Cross Axis (Horizontal Position)
 
Rows have two properties
 1. Main Axis (Horizontal position)
 2. Cross Axis Vetical Position)
 
 */

// Where we can't use padding we will use container

