import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/WorkCards.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';

class UserView extends StatelessWidget {
  final int imageIndex;

  UserView({Key key, @required this.imageIndex}) : super(key: key);

  final List<String> myImages = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
    "assets/images/image4.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(
                          "assets/images/map.png",
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.8,
                    endIndent: 15,
                    indent: 15,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    child: Column(
                      children: [
                        Text(
                          "name:las zozk sulaiman",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        Text(
                          "phone:0750-446-3073",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        Text(
                          "job:ios dev",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(myImages[imageIndex]),
                ),
                top: 170,
                left: 30,
                right: 300,
              ),
              Positioned(
                top: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Positioned(
                  top: 50,
                  left: 370,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(25),
                        topLeft: Radius.circular(25)),
                    child: Container(
                      color: Colors.blueAccent,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.favorite),
                      ),
                    ),
                  ))
            ],
          ),
          Divider(
            thickness: 1.8,
            endIndent: 15,
            indent: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("my works",
                    style:
                        TextStyle(color: Colors.blue.shade800, fontSize: 20)),
                Text('more')
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Container(
                  height: 150,
                  child: ListView(
                    children: [
                      FlatButton(child: WorkCards(0), onPressed: () {}),
                      FlatButton(child: WorkCards(0), onPressed: () {}),
                      FlatButton(child: WorkCards(0), onPressed: () {}),
                      FlatButton(child: WorkCards(0), onPressed: () {}),
                      FlatButton(child: WorkCards(0), onPressed: () {}),
                    ],
                    scrollDirection: Axis.horizontal,
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("Rate me",
                    style:
                        TextStyle(color: Colors.blue.shade800, fontSize: 20)),
              ],
            )),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.blueAccent,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                Container(
                  width: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: ElevatedButton(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(FontAwesomeIcons.star),
                          Text("Rating"),
                        ],
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  child: Icon(FontAwesomeIcons.twitter),
                  radius: 30,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  child: Icon(FontAwesomeIcons.facebook),
                  radius: 30,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  child: Icon(FontAwesomeIcons.instagram),
                  radius: 30,
                ),
              ),
              FlatButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: CircleAvatar(
                  child: Icon(FontAwesomeIcons.tiktok),
                  radius: 30,
                ),
              ),
            ],
          )
        ],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(25), topLeft: Radius.circular(25)),
        child: Container(
          height: 60,
          color: Colors.blueAccent,
          child: InkWell(
            onTap: () => print('tap on close'),
            child: Padding(
              padding: EdgeInsets.only(top: 8.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.call,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
