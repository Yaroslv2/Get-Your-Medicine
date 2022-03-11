import 'package:flutter/material.dart';
import 'package:get_your_medicine/database/data.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../notes.dart';

class NotesForm extends StatefulWidget {
  const NotesForm({ Key key }) : super(key: key);

  @override
  _NotesFormState createState() => _NotesFormState();
}

class _NotesFormState extends State<NotesForm> {

  void newNote() {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NewNote())
  );
  }

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: ValueListenableBuilder(
          valueListenable: Hive.box<Note>('note_box').listenable(),
          builder: (context, Box<Note> box, _) {
            if (box.values.isEmpty) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Тут пока ничего нет("),
                    Container(
                      margin: EdgeInsets.only(top: 15.0),
                      child: FlatButton(
                        shape: RoundedRectangleBorder(side: BorderSide(
                          color: Colors.black
                        )),
                        child: Text("Add new", style: TextStyle(color: Colors.black)),
                        onPressed: newNote,
                      )
                    )
                  ]
                )
              );
            }
            return StaggeredGridVew();
          }
        ),
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: medicineBox.listenable(), 
        builder: (context, Box<Medicine> box, _) {
          if(box.values.isNotEmpty) {
            return FloatingActionButton(
              backgroundColor: Color(0xFFFFF2A1),
              child: Icon(Icons.add, color: Colors.black),
              elevation: 0,
              onPressed: newNote, 
            );
          }
          return Container(
            width: 0,
            height: 0,
          );
        }
      )
    );
  }
}