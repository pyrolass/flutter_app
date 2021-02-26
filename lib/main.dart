import 'package:ff_navigation_bar/ff_navigation_bar.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_item.dart';
import 'package:ff_navigation_bar/ff_navigation_bar_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/SideMenu.dart';
import 'package:flutter_app/UserView.dart';
import 'package:flutter_app/best_row.dart';
import 'package:flutter_app/feature_row.dart';
import 'package:flutter_app/new_row.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  @override
  widget createState() => widget();
}

class widget extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      Colors.red;
    });
  }

  final List<String> myImages = [
    "assets/images/image1.jpg",
    "assets/images/image2.jpeg",
    "assets/images/image3.jpeg",
    "assets/images/image4.jpg",
  ];

  int currentImage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: IconButton(icon: Icon(Icons.add_location)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search)),
        ],
      ),
      drawer: SideMenu(),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Stack(
                  children: [
                    PageView.builder(
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (value) {
                        setState(() {
                          this.currentImage = value;
                        });
                      },
                      itemCount: myImages.length,
                      itemBuilder: (context, index) => Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset(
                          myImages[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: 30,
                        margin: EdgeInsets.only(bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ...List.generate(
                              4,
                              (index) => Container(
                                width: 20,
                                height: 20,
                                decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  color: index == this.currentImage
                                      ? Colors.blue
                                      : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              FeatureRow(),
              Divider(
                thickness: 1.8,
                endIndent: 15,
                indent: 15,
              ),
              SizedBox(
                height: 10,
              ),
              BestRow(),
              Divider(
                thickness: 1.8,
                endIndent: 15,
                indent: 15,
              ),
              SizedBox(
                height: 10,
              ),
              NewRow(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FFNavigationBar(
        theme: FFNavigationBarTheme(
          unselectedItemIconColor: Colors.white,
          barBackgroundColor: Colors.blueAccent,
          selectedItemBorderColor: Colors.white,
          selectedItemBackgroundColor: Colors.blueAccent,
          selectedItemIconColor: Colors.white,
          selectedItemLabelColor: Colors.white,
          unselectedItemLabelColor: Colors.white,
        ),
        selectedIndex: _selectedIndex,
        onSelectTab: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.home,
            label: 'Home',
          ),
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.heart,
            label: 'Favorite',
          ),
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.globe,
            label: 'Near By',
          ),
          FFNavigationBarItem(
            iconData: FontAwesomeIcons.newspaper,
            label: 'Notification',
          ),
        ],
      ),
    );
  }
}
