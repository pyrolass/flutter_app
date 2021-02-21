import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/WorkCards.dart';

import 'card.dart';

class UserView extends StatelessWidget {
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
                        Text("name:las zozk sulaiman"),
                        Text("name:las zozk sulaiman"),
                        Text("name:las zozk sulaiman"),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage("assets/images/image1.jpg"),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/image1.jpg"),
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/image1.jpg"),
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/image1.jpg"),
              ),
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage("assets/images/image1.jpg"),
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
