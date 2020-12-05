import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ui_challange/social/social2/social2model.dart';

class ImageBoxes extends StatefulWidget {
  final List<Social2Model> list;

  ImageBoxes(this.list);

  @override
  _ImageBoxesState createState() => _ImageBoxesState();
}

class _ImageBoxesState extends State<ImageBoxes> {
  PageController _pageController;
  int index = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: index,
      keepPage: false,
      viewportFraction: 0.8,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: PageView.builder(
        onPageChanged: (value) {
          setState(() {
            index = value;
          });
        },
        controller: _pageController,
        itemBuilder: (context, index) => buildAnimatedItemBuilder(index),
        itemCount: widget.list.length,
      ),
    );
  }

  buildAnimatedItemBuilder(int index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, ch) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1.2 - value.abs() * 0.2).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 690,
            width: Curves.easeInOut.transform(value) * 310,
            child: ch,
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.60,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  image: DecorationImage(
                      image: NetworkImage("${widget.list[index].imgUrl}"),
                      fit: BoxFit.cover),
                ),
              ),
              Positioned(
                bottom: 10.0,
                left: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.location_on_outlined,color: Colors.white,),
                    SizedBox(width: 5,),
                    Text(widget.list[index].location,style: TextStyle(color: Colors.white,fontSize: 15),),
                  ],
                ),
              ),
              Positioned(
                bottom: 10.0,
                right: 10.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.list[index].photos,style: TextStyle(color: Colors.white,fontSize: 15),),
                    SizedBox(width: 5,),

                    Icon(Icons.camera_alt_outlined,color: Colors.white,),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            widget.list[index].name,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 2.5),
            child: Text(
              widget.list[index].description,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color(0xFFc9b2c7), fontSize: 16, letterSpacing: 0.6),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.5,
            height: MediaQuery.of(context).size.height * 0.065,
            alignment: Alignment.center,
            child: Text(
              "VIEW PROFILE",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
                border: Border.all(width: 1, color: Color(0xFFc9b2c7))),
          ),
        ],
      ),
    );
  }
}
