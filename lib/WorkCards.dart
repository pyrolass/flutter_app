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
      width: 200,
      height: 200,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 172,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    images[imgNum],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
