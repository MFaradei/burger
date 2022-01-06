import 'package:burger/one_page.dart';
import 'package:burger/rooot.dart';
import 'package:burger/three_page.dart';
import 'package:burger/two_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Светофорик',
      initialRoute: '/',
      routes: {
        '/': (context) => const Rooot(),
        '/red': (context) => const OnePages(),
        '/yellow': (context) => const TwoPages(),
        '/green': (context) => const ThreePages(),
      },
    ),
  );
}
