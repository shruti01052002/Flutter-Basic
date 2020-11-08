import 'package:flutter/material.dart';

void main()
{
  runApp(new MyApp());
}

//stless, stful
class MyApp extends StatelessWidget 
{
  @override
  Widget build(BuildContext context)
  {
    return new MaterialApp(
    title: "My App",
    home: new Scaffold(
      appBar: new AppBar(
      title: new Text("Home Page"),
      ), 
      body: new Center(child: new Text("Hello World")),
    ),
    );
  }
}


/*home:, key: , routes:, theme:, color:, 
      Scaffold provide the structure to our app*/
//build is a method whenever we create object of MyApp then build ethod will call
/*
 1. There are two types of wiidgets 
    a. Stateless
    b. Stateful
 2. If a widget changes the user interacts with it, i.e., Stateful widget.
 3. A widget's state consist of values that can change, like a slider's current value or whether a checkbox or radio.
 4. A widget's state is stored in a state object, seperating the widget's state from it's appearance.
 5. When the widget's state changes, the state object calls setState(), tellig the frameworkto 
 6. A stateless widgethas no internal state to manage.
 7. Icon, IconButtton, and Text are examples of stateless widgets, which subclass StatelessWidget.
 8. A stateful widget is dynamic.
 9. The user can interact with a stateful widget. (by typing into a form, or moving a slider) or it changes over time (perhaps a date feed causes the UI to update).
 10. Checkbox, Radio, Slider, InkWell, Form, and TextField are examples of stateful widgets, which subclass StatefulWidget.
 
 */