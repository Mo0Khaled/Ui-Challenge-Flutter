import 'package:flutter/material.dart';
import 'package:ui_challange/payment/payment1/payment1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ui Challange',
      initialRoute: Payment1.routeId,
      routes: {
        Payment1.routeId:(context)=>Payment1(),
      },
    );
  }
}
