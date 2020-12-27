import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "test",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  title(String title) {
    return Row(
      children: [
        Text(title,
            style: TextStyle(color: Colors.blue.shade800, fontSize: 25)),
        Spacer(),
        Text("more"),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: IconButton(icon: Icon(Icons.add_location)),
          leading: IconButton(icon: Icon(Icons.menu)),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.search)),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                title('Future'),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 200,
                    child: ListView(
                      children: [cards(), cards(), cards(), cards(), cards()],
                      scrollDirection: Axis.horizontal,
                    )),
                Divider(),
                title('Best'),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 200,
                    child: ListView(
                      children: [cards(), cards(), cards(), cards(), cards()],
                      scrollDirection: Axis.horizontal,
                    )),
                Divider(),
                title('New'),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 200,
                    child: ListView(
                      children: [cards(), cards(), cards(), cards(), cards()],
                      scrollDirection: Axis.horizontal,
                    )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
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
        ));
  }
}

class cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      child: Card(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/image1.jpg'))),
            ),
            Container(
              child: Text("world wonders"),
            ),
            Container(
              child: Text("world wonders"),
            ),
            Container(
              child: Text("world wonders"),
            )
          ],
        ),
      ),
    );
  }
}
