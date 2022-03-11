import 'package:flutter/material.dart';

class NotesInformation extends StatelessWidget {
  final int index;

  const NotesInformation({ Key key, @required this.index }) : super(key: key);

  _changeTitle(String text) {
    
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
        title: Text("Note", style: TextStyle(color: Colors.black)),
       ),
       body: Container(
         padding: EdgeInsets.all(5.0),
         child: Column(
           children: [
             TextField(
               onChanged: _changeTitle,
             )
           ],
         ),
       ),
    );
  }
}