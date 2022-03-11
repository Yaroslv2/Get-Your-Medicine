import 'package:flutter/material.dart';
import '../../../database/data.dart';

class MedicineInformation extends StatefulWidget {
  final Medicine medicine;

  const MedicineInformation({ Key key, this.medicine}) : super(key: key);


  @override
  _MedicineInformationState createState() => _MedicineInformationState();
}

class _MedicineInformationState extends State<MedicineInformation> {

  Icon doneIcon;

  void initState() {
    doneIcon = Icon(Icons.done, size: 30);
    super.initState();
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
        title: Text("${widget.medicine.name}", style: TextStyle(color: Colors.black),),

        actions: [
          IconButton(
            icon: Icon(Icons.delete_outline_outlined),
            onPressed: () {
              deleteMedicine(context, widget.medicine);

            },
          )
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Время следующего према"),
                Text("Coming soon...")
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 15, bottom: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Напоминание"),
                      Text("Coming soon")
                    ],
                  ),
                  FlatButton(
                    onPressed: () {}, 
                    child: Text("Изменить"),
                    shape: RoundedRectangleBorder(side: BorderSide(color: Colors.black))
                  )
                ],
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Напоминание о пополнении"),
                // swithbutton
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              padding: EdgeInsets.all(25),
              color: Color(0xFFFFF2A1),
              elevation: 0,
              child: doneIcon,
              onPressed: () {
                setState(() {
                  if (doneIcon == Icon(Icons.done, size: 30)) {
                    doneIcon = Icon(Icons.refresh, size: 30);
                  }
                });
                takeMedicine(context);
              },
              shape: CircleBorder(),
              
            ),
            MaterialButton( 
              padding: EdgeInsets.all(25),
              color: Color(0xFF34C759),
              elevation: 0,
              child: Text("AR+", style: TextStyle(fontSize: 25)),
              onPressed: () {},
              shape: CircleBorder(),
            )
          ],
        ),
      )
    );
  }
}

void takeMedicine(context) {
  // save take count
  
}

void deleteMedicine(context, medicine) {
  medicine.delete();
  Navigator.pop(context);
}