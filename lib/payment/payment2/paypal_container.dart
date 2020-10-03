import 'package:flutter/material.dart';

class PayPalContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/paypal_logo.png',
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
                "I don't know how but they found me. Run for it, Marty. My god, I don't know how but they found me. Run for it, Marty. My god,",style: TextStyle(height: 1.5,letterSpacing: 1),textAlign: TextAlign.center,),
          ),
        )
      ],
    );
  }
}
