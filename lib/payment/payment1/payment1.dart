import 'package:flutter/material.dart';

class Payment1 extends StatefulWidget {
  static const routeId = '/payment1';

  @override
  _Payment1State createState() => _Payment1State();
}

class _Payment1State extends State<Payment1> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF0078e3),
        title: Text("Payment"),
        centerTitle: true,
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_outlined), onPressed: () {}),
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
                  CircleAvatar(
                    child: Icon(Icons.check),
                    backgroundColor: Colors.white,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.32,
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    child: Icon(Icons.check),
                    backgroundColor: Colors.white,
                  ),
                  Container(
                    height: 2,
                    width: MediaQuery.of(context).size.width * 0.32,
                    color: Colors.white,
                  ),
                  CircleAvatar(
                    child: Text('3'),
                    backgroundColor: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Pay with Credit Card or PayPal",
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            height: 5,
            thickness: 1,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Numbers',
                          hintStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          ),
                          labelText: "Card Number",
                          labelStyle: TextStyle(
                            color: Colors.grey.shade700,
                            fontSize: 18,
                          )),
                    ),
                    Container(
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 2 - 50,
                              child: TextFormField(
                                decoration:
                                    InputDecoration(hintText: 'Expiry Date'),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 1,
                            child: Container(
                              color: Colors.grey,
                            ),
                          ),
                          Expanded(
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width / 2 - 50,
                              child: TextFormField(
                                decoration:
                                    InputDecoration(hintText: ' Security Code'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TextFormField(
                      decoration: InputDecoration(hintText: 'Name on Card'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Switch(
                          value: isActive,
                          onChanged: (value) {
                            setState(() {
                              isActive = !isActive;
                            });
                          },
                        ),
                        Text("Save for future purchases",style: TextStyle(color: Colors.grey.shade700,fontSize: 18),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF09a9ec),
                    borderRadius: BorderRadius.circular(25)
                  ),
                  child: Text('Pay \$238 With Credit card',style: TextStyle(color: Colors.white,fontSize: 19,letterSpacing: 1.1),),
                ),
                SizedBox(height: 15,),
                Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1,color: Colors.grey)
                  ),
                  child: Text('Continue With PayPal',style: TextStyle(color: Colors.black,fontSize: 19,letterSpacing: 1.1),),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
