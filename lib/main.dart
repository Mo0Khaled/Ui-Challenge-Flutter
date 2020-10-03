import 'package:flutter/material.dart';
import 'package:ui_challange/payment/payment1/payment1.dart';
import 'package:ui_challange/payment/payment2/payment2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Challenge',
      initialRoute: Payment2.routeId,
      routes: {
        Payment1.routeId:(context)=> Payment1(),
        Payment2.routeId:(context)=>Payment2(),
      },
    );
  }
}
