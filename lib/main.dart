// ignore_for_file: camel_case_types

import 'package:example1/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

@override
  State<MyApp> createState() => _page();
}

class _page extends State<MyApp>{

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: homepage(),
    );
  }
}
