import 'package:flutter/material.dart';
import 'package:ui_challange/social/social1/peopleModel.dart';

import 'activity_container.dart';

class Social1Activaty extends StatefulWidget {
  static const routeId = 'social1';

  @override
  _Social1ActivityState createState() => _Social1ActivityState();
}
List<PeopleModel> peoples = [
  PeopleModel(
    url: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
    name: "Barbara Jordan",
    comments: "",
    mins: "27 min ago",
    status: "started following you",
  ),
  PeopleModel(
    url: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
    name: "Bryan Reid",
    comments: "“Wow! Really nice mobile UI kit! Thanks fo...”",
    mins: "5 hours ago",
    status: "commented your work: ",
  ),
  PeopleModel(
    url: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
    name: "Alan Woods",
    comments: "Chameleon UI Kit",
    mins: "11 hours ago",
    status: "liked your work",
  ),
  PeopleModel(
    url: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
    name: "Samuel Shaw",
    comments: "“Wow! Really nice mobile UI kit! Thanks fo...”",
    mins: "18 hours ago",
    status: "saved your work",
  ),
  PeopleModel(
    url: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
    name: "Steven Castro",
    comments: "",
    mins: "1 day ago",
    status: "started following you",
  ),
  PeopleModel(
    url: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
    name: "Steven Castro",
    comments: "",
    mins: "1 day ago",
    status: "started following you",
  ),
  PeopleModel(
    url: "https://api.time.com/wp-content/uploads/2019/04/katiebouman.jpg",
    name: "Janice Keller",
    comments: "Great UI Kit",
    mins: "1 day ago",
    status: "liked your work",
  ),
];
class _Social1ActivityState extends State<Social1Activaty> {

  @override
  Widget build(BuildContext context) {
    return
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF9d1b55),
                    Color(0xFFa52356),
                    Color(0xFFb83758),
                    Color(0xFFc94859),
                    Color(0xFFd7565a),
                  ]
              ),
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
              appBar: AppBar(
                title: Text("Activity"),
                centerTitle: true,
                backgroundColor: Colors.transparent,
                elevation: 0.0,
                leading: Row(
                  children: [
                    Icon(Icons.arrow_back,size: 30,),
                    // Text("Back"),
                  ],
                ),
              ),
              body: ListView.builder(
                itemCount: peoples.length,
                itemBuilder: (context,index) => Column(
                  children: [
                    ActivityContainer(peoples[index]),
                    if(index < peoples.length-1)
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Divider(color: Colors.white,),
                    ),
                  ],
                ),
              ),
          ),
        ],
      );
  }
}
