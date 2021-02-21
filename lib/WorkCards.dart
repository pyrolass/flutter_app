import 'package:flutter/material.dart';
import 'package:flutter_app/UserView.dart';

class WorkCards extends StatelessWidget {
  int imgNum;

  List<String> images = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
    "assets/images/image4.jpg",
  ];

  WorkCards(this.imgNum) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Card(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 142,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      images[imgNum],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
