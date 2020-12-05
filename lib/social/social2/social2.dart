import 'package:flutter/material.dart';
import 'package:ui_challange/social/social2/imageBoxes.dart';
import 'package:ui_challange/social/social2/social2model.dart';

class Social2PeopleKnow extends StatefulWidget {
  static const routeId = 'social-2';
  @override
  _Social2PeopleKnowState createState() => _Social2PeopleKnowState();
}

class _Social2PeopleKnowState extends State<Social2PeopleKnow> {
  List<Social2Model> myPeopleList = [
    Social2Model(
      name: "Catherine Harvey ",
      description: "If I know too much about my own future I could endanger my own",
      imgUrl: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
      location: "Chiang Mai, Thailand",
      photos: "200 Photos",
    ),
    Social2Model(
      name: "Samuel Shaw",
      description: "If I know too much about my own future I could endanger my own",
      imgUrl: "https://globalnews.ca/wp-content/uploads/2020/06/daniel-salisbury-from-facebook.jpg?quality=85&strip=all",
      location: "Thailand",
      photos: "365 Photos",
    ),
    Social2Model(
      name: "Barbara Jordan",
      description: "If I know too much about my own future I could endanger my own",
      imgUrl: "https://www.usnews.com/dims4/USNEWS/90d0ef6/2147483647/resize/1200x%3E/quality/85/?url=http%3A%2F%2Fmedia.beam.usnews.com%2F8f%2F6c%2Fdd11fef84bc59c847f41cde40558%2F200306sloveniafestival-editorial.festival.Getty.jpg",
      location: "Chiang Mai, Thailand",
      photos: "30 Photos",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFFb25157),
                Color(0xFFb1344c),
                Color(0xFF920947),
                Color(0xFF8e3a70),
                Color(0xFF8e3d7a),
                Color(0xFF4c2a6a),
                Color(0xFF311b52),

              ]
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.transparent,
            title: Text("People You May Know"),
            centerTitle: true,
            leading: IconButton(icon: Icon(Icons.arrow_back,size: 35,),onPressed: (){},),
            actions: [
              IconButton(icon: Icon(Icons.search,size: 35,), onPressed: (){}),
            ],
          ),
          body:  Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.85,
                child:  ImageBoxes(myPeopleList),
              ),
            ],
          )
        ),
      ],
    );
  }
}
