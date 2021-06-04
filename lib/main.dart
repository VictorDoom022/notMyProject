import 'package:flutter/material.dart';
import 'package:notmyproject/views/ARStuffs/kukupAR.dart';
import 'package:notmyproject/views/welcomePage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/arTest',
      routes: {
        '/':(context) => welcomePage(),
        '/arTest':(context) => kukupAR()
      },
    )
  );
}