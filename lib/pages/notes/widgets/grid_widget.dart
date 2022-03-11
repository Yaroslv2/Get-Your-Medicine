import 'package:flutter/material.dart';
import 'package:get_your_medicine/database/data.dart';

class StaggeredGridVew extends StatelessWidget {
  const StaggeredGridVew({ Key key }) : super(key: key);

  _notePressed() {
    
  }

  @override
  Widget build(BuildContext context) => GridView.builder(
    itemCount: noteBox.length,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10.0
    ), 
    itemBuilder: (context, index) {
      Note note = noteBox.getAt(index);
      return Container(
        margin: EdgeInsets.only(bottom: 5.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
        child: FlatButton(
          shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black), borderRadius: BorderRadius.circular(20.0)),
          child: Text("${note.title}", style: TextStyle(color: Colors.black),),
          onPressed: _notePressed,
        ),
      );
    }
  );
}