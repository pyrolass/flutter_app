import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 40),
                color: Colors.blue,
                child: Column(
                  children: [
                    Container(
                      child: SizedBox(
                        width: double.infinity,
                        height: 100,
                        child: DrawerHeader(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image:
                                      AssetImage('assets/images/image1.jpg'))),
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
                onTap: () => {Navigator.of(context).pop()},
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
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Container(
            height: 150,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/image1.jpg"),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/image1.jpg"),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/image1.jpg"),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
