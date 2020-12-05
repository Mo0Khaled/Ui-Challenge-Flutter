import 'package:flutter/material.dart';
import 'package:ui_challange/social/social1/peopleModel.dart';

class ActivityContainer extends StatelessWidget {
  final PeopleModel peopleModel;

  ActivityContainer(this.peopleModel);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.13,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(peopleModel.url),
              radius: 35,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      Text(
                        peopleModel.name,
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        peopleModel.status,
                        style:
                            TextStyle(color: Color(0xFFe7cfd6), fontSize: 15),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                peopleModel.comments == ""
                    ? SizedBox()
                    : Text(
                        peopleModel.comments,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                SizedBox(height: 5,),
                Row(
                  children: [
                    Icon(
                      Icons.watch_later_outlined,
                      color: Color(0xFFe7cfd6),
                      size: 18,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      peopleModel.mins,
                      style: TextStyle(color: Color(0xFFe7cfd4), fontSize: 15),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
