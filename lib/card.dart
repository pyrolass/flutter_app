import 'package:flutter/material.dart';
import 'package:flutter_app/UserView.dart';

class Cards extends StatelessWidget {
  String txt1;
  String txt2;
  String txt3;
  int imgNum;

  List<String> images = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
    "assets/images/image4.jpg",
  ];

  Cards(this.txt1, this.txt2, this.txt3, this.imgNum) {}
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Column(
        children: [
          Center(
            child: Container(
              width: 250,
              height: 200,
              child: Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 100,
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: Text(txt1),
                        ),
                        Container(
                          child: Text(txt2),
                        ),
                        Container(
                          child: Text(txt3),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
