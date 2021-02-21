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
                  Container(
                    color: Colors.white,
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
            ],
          ),
          Divider(
            thickness: 1.8,
            endIndent: 15,
            indent: 15,
          ),
          SizedBox(
            height: 10,
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
          Divider(
            thickness: 1.8,
            endIndent: 15,
            indent: 15,
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              child: Container(
                  height: 200,
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
        ],
      ),
    );
  }
}
