import 'package:flutter/material.dart';
import 'package:get_your_medicine/database/data.dart';

import '../medicine.dart';
import 'medicine_new.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({ Key key }) : super(key: key);

  @override
  _MedicineState createState() => _MedicineState();
}

class _MedicineState extends State<MedicinePage> {


  void newMedicine() async {
  final _new = await Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NewMedicine())
  );

  if (_new != null) {
    setState(() {
      medicineBox.add(_new);
    });
  }
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
        title: Text("Medicine", style: TextStyle(color: Colors.black),),
      ),
      body: MedicineForm(),
    );
  }
}