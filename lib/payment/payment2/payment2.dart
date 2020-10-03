import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Payment2 extends StatefulWidget {
  static const routeId = '/payment-2';

  @override
  _Payment2State createState() => _Payment2State();
}

class _Payment2State extends State<Payment2> {
  bool card1 = true;
  bool card2 = false;
  Color activeColor = Color(0xFF01765f);
  Color inActiveColor = Color(0xFF015942);
  bool _visible = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500),(){
      setState(() {
        _visible = true;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xFF006e60),
            Color(0xFF048d5d),
            Color(0xFF06a55b),
            Color(0xFF08af5a),
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text("Payment"),
          centerTitle: true,
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: 40),
                curve: Curves.ease,
                duration: Duration(seconds: 2),
                builder:(context,size,ch)=> Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  height: size,
                  decoration: BoxDecoration(
                    color: Color(0xFF015842),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              card1 = true;
                              card2 = false;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: card1 ? activeColor : inActiveColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "Credit Card",
                              style: TextStyle(
                                  color: card1 ? Colors.white : Colors.white60,
                                  letterSpacing: 1),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              card1 = false;
                              card2 = true;
                            });
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: double.infinity,
                            decoration: BoxDecoration(
                              color: card2 ? activeColor : inActiveColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              'PayPal',
                              style: TextStyle(
                                  color: card2 ? Colors.white : Colors.white60,
                                  letterSpacing: 1),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              AnimatedOpacity(
                duration: Duration(milliseconds: 500),
                curve: Curves.easeIn,
                opacity: _visible ? 1 : 0,
                child: Text(
                  "\$275.00",
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.33,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextFormField(
                          decoration: InputDecoration(
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                            ),
                            labelText: "Card Number",
                            labelStyle: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 12,
                            ),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Container(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width / 2 -
                                      50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: 'Expiry Date',
                                      labelStyle: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
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
                                  width: MediaQuery.of(context).size.width / 2 -
                                      50,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      labelText: ' Security Code',
                                      labelStyle: TextStyle(
                                        color: Colors.grey.shade700,
                                        fontSize: 12,
                                      ),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Text("Name on Card",style: TextStyle(color: Colors.grey,fontSize: 12),),
                        SizedBox(height: 10,),
                        Text("SERGEY AZOVSKIY",style: TextStyle(color: Colors.black,fontSize: 19,fontWeight: FontWeight.w500,letterSpacing: 1),),
                      ],
                    ),
                  ),
                ),
              ),
              AnimatedOpacity(
                duration: Duration(milliseconds: 800),
                curve: Curves.easeInCubic,
                opacity: _visible ? 1 : 0,
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.55,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(width: 1,color: Colors.white38),
                  ),
                  child: Text("Pay \$275.00",style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Save payment method",style: TextStyle(color: Colors.white,letterSpacing: 0.7,fontWeight: FontWeight.w500),),
                    Icon(Icons.help_outline,color: Colors.white,)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
