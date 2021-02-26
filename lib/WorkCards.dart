import 'package:flutter/material.dart';
import 'package:flutter_app/UserView.dart';

class WorkCards extends StatelessWidget {
  final workImage;

  WorkCards(this.workImage) {}
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 140,
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        child: Card(
          child: Column(
            children: [
              Container(
                width: 150,
                height: 142,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(workImage),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
