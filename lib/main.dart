import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/SideMenu.dart';
import 'package:flutter_app/UserView.dart';

import 'card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      home: UserView(),
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
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Feature",
                          style: TextStyle(
                              color: Colors.blue.shade800, fontSize: 25)),
                      Text('more')
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    child: Container(
                        height: 200,
                        child: ListView(
                          children: [
                            Cards("las", "zozk", "sulaiman", 0),
                            Cards("las", "zozk", "sulaiman", 1),
                            Cards("las", "zozk", "sulaiman", 2),
                            Cards("las", "zozk", "sulaiman", 3),
                            Cards("las", "zozk", "sulaiman", 0),
                          ],
                          scrollDirection: Axis.horizontal,
                        )),
                  ),
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
                      Text("Best",
                          style: TextStyle(
                              color: Colors.blue.shade800, fontSize: 25)),
                      Text('more')
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      height: 200,
                      child: ListView(
                        children: [
                          Cards("las", "zozk", "sulaiman", 0),
                          Cards("las", "zozk", "sulaiman", 1),
                          Cards("las", "zozk", "sulaiman", 2),
                          Cards("las", "zozk", "sulaiman", 3),
                          Cards("las", "zozk", "sulaiman", 0),
                        ],
                        scrollDirection: Axis.horizontal,
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
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("New",
                          style: TextStyle(
                              color: Colors.blue.shade800, fontSize: 25)),
                      Text('more')
                    ],
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                      height: 200,
                      child: ListView(
                        children: [
                          Cards("las", "zozk", "sulaiman", 0),
                          Cards("las", "zozk", "sulaiman", 1),
                          Cards("las", "zozk", "sulaiman", 2),
                          Cards("las", "zozk", "sulaiman", 3),
                          Cards("las", "zozk", "sulaiman", 0),
                        ],
                        scrollDirection: Axis.horizontal,
                      )),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(25), topLeft: Radius.circular(25)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            unselectedItemColor: Colors.white,
            selectedItemColor: Colors.yellow,
            backgroundColor: Colors.blueAccent,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorite',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore),
                label: 'NearBy',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_active),
                label: 'Notification',
              )
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ));
  }
}
