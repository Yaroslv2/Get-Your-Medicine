import 'package:flutter/material.dart';
import 'calendar_form.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({ Key key }) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(20.0),
            bottomLeft: Radius.circular(20.0)
          )
        ),
        title: Text("Calendar", style: TextStyle(color: Colors.black),),
      ),
      body: CalendarForm(),
    );
  }
}