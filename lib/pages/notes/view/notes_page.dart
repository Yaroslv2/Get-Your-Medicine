import 'package:flutter/material.dart';
import 'notes_form.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({ Key key }) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20.0),
            bottomRight: Radius.circular(20.0)
          )
        ),
        title: Text("Notes", style: TextStyle(color: Colors.black),),
      ),
      body: NotesForm(),
    );
  }
}