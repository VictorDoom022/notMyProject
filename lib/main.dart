import 'package:flutter/material.dart';
import 'package:notmyproject/views/welcomePage.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context) => welcomePage()
      },
    )
  );
}