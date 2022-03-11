import 'package:flutter/material.dart';
import 'package:get_your_medicine/database/data.dart';

class NewMedicine extends StatefulWidget {

  const NewMedicine({ Key key }) : super(key: key);

  @override
  _NewMedicineState createState() => _NewMedicineState();
}

class _NewMedicineState extends State<NewMedicine> {

  String _name;

  void _changeText(String text) {
    _name = text;
  }

  void _newMedicine() {
    medicineBox.add(Medicine(name: _name));

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
        title: Text("Add new", style: TextStyle(color: Colors.black),),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
                decoration: InputDecoration(hintText: 'Input name'),
                onChanged: _changeText,
            ),
            FlatButton(
              minWidth: 380,
              shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
              child: Text("Add new"),
              onPressed: _newMedicine,
            )
          ],
        ),
      )
    );
  }
}