import 'package:flutter/material.dart';

class Payment1 extends StatelessWidget {
  static const routeId = '/payment1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0078e3),
        title: Text("Payment"),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios_outlined), onPressed: (){}),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 80,
            color: Color(0xFF0078e3),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(child: Icon(Icons.check),backgroundColor: Colors.white,),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.32,
                    color: Colors.white,
                  ),
                  CircleAvatar(child: Icon(Icons.check),backgroundColor: Colors.white,),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.32,
                    color: Colors.white,
                  ),
                  CircleAvatar(child: Text('3'),backgroundColor: Colors.white,),
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
          Text("Pay with Credit Card or PayPal",style: TextStyle(fontSize: 18),),
          SizedBox(height: 20,),
          Divider(height: 5,thickness: 1,),
        ],
      ),
    );
  }
}
