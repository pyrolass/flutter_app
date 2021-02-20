import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 40),
                  color: Colors.blue,
                  child: Column(
                    children: [
                      Container(
                        child: SizedBox(
                          width: 100,
                          height: 100,
                          child: DrawerHeader(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/image1.jpg'))),
                          ),
                        ),
                      ),
                      Text(
                        "Name:las Zozk Sulaiman",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Phone:750-790-9308",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Location:Erbil",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.input),
                  title: Text('sign in'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.verified_user),
                  title: Text('about us'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('contact us'),
                  onTap: () => {Navigator.of(context).pop()},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
