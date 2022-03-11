import 'package:flutter/material.dart';

import 'palette.dart';

final appTheme = ThemeData(
  iconTheme: IconThemeData(color: Colors.black),
  primarySwatch: Palette.mBlack,
  primaryColor: Colors.black,
  appBarTheme: AppBarTheme(
    color: Color(0xFFFFF2A1),
    centerTitle: true,
    elevation: 0,
    iconTheme: IconThemeData(
      color: Colors.black
    )
  ),
);