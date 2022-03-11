import 'package:flutter/material.dart';
import '../../../database/data.dart';

class NewNote extends StatefulWidget {
  const NewNote({ Key key }) : super(key: key);

  @override
  _NewNoteState createState() => _NewNoteState();
}

class _NewNoteState extends State<NewNote> {

  String title;
  String content;

  _changeTitle(String text) {
    title = text;
  }

  _changeContent(String text) {
    content = text;
  }

  _newNote() {
    noteBox.add(Note(
      title: title,
      content: content
    ));

    Navigator.pop(context);
  }

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
        title: Text("New Note", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Title"),
              onChanged: _changeTitle,
            ),
            TextField(
              decoration: InputDecoration(hintText: "content"),
              onChanged: _changeContent,
            ),
            Container(
              child: FlatButton(
                child: Text("Save"),
                onPressed: _newNote,
              ),
            )
          ],
        ),
      ),
    );
  }
}