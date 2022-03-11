import 'package:flutter/material.dart';
import 'package:get_your_medicine/database/data.dart';
import 'package:get_your_medicine/pages/medicine/medicine.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'medicine_new.dart';


class MedicineForm extends StatefulWidget {
  const MedicineForm({ Key key }) : super(key: key);

  @override
  _MedicineFormState createState() => _MedicineFormState();
}

class _MedicineFormState extends State<MedicineForm> {

  bool floatingActionButtonVisible = false;

  void newMedicine() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => NewMedicine())
    );

    if(medicineBox.isNotEmpty && !floatingActionButtonVisible) {
      setState(() {
        floatingActionButtonVisible = !floatingActionButtonVisible;
      });
    }
  }

  _medicineInformation(medicine) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MedicineInformation(medicine: medicine))
    );

    if (medicineBox.isEmpty && floatingActionButtonVisible) {
      setState(() {
        floatingActionButtonVisible = !floatingActionButtonVisible;
      });
    }
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: medicineBox.listenable(),
        builder: (context, Box<Medicine> box, _) {
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
                      onPressed: newMedicine,
                    )
                  )
                ]
              )
            );
          }
          return ListView.builder(
            padding: EdgeInsets.all(8.0),
            itemCount: box.length,
            itemBuilder: (context, index) {
              Medicine medicine = box.getAt(index);
              return Container(
                margin: EdgeInsets.only(bottom: 5.0),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                height: 50,
                child: FlatButton(
                  shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black)),
                  onPressed: () {
                    setState(() {
                      _medicineInformation(medicine);
                    });
                  },
                  child: Text(
                    "${medicine.name}",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              );
            },
          );
        }
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: medicineBox.listenable(), 
        builder: (context, Box<Medicine> box, _) {
          if(box.values.isNotEmpty) {
            return FloatingActionButton(
              backgroundColor: Color(0xFFFFF2A1),
              child: Icon(Icons.add, color: Colors.black),
              elevation: 0,
              onPressed: newMedicine, 
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
      
void isBoxOpen() {

}