import 'package:flutter/material.dart';
import 'package:flutter_app/WorkCards.dart';

class MyWorks extends StatelessWidget {
  final user;
  final index;

  MyWorks(this.user, this.index);
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
              Text("My Work Album",
                  style: TextStyle(color: Colors.blue.shade800, fontSize: 20)),
              Text('More')
            ],
          )),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            child: Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: user[index].workImg.length,
                  itemBuilder: (context, x) {
                    return WorkCards(user[index].workImg[x]);
                  },
                )),
          ),
        ),
      ],
    );
  }
}
