import 'package:flutter/material.dart';

import 'theme.dart';
import 'routes.dart';
import 'database/hive_operations.dart';

void main(){
  openBox();

  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      home: HomePage(),
    );
  } 
}