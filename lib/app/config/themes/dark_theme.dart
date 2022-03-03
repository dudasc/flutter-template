import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData.dark().copyWith(
  appBarTheme: const AppBarTheme(
    elevation: 0,
    shape: Border(
      bottom: BorderSide(color: Colors.orange, width: 1),
    ),
  ),
);
