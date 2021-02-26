import 'package:flutter/material.dart';
import 'package:flutter_app/UserView.dart';
import 'package:flutter_app/card.dart';
import 'Data.dart';

class NewRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("New",
                  style: TextStyle(color: Colors.blue.shade800, fontSize: 25)),
              Text('more')
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Container(
              height: 200,
              child: ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  return FlatButton(
                      child: Cards(users, index),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserView(users, index),
                          ),
                        );
                      });
                },
                scrollDirection: Axis.horizontal,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
