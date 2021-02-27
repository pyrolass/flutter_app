import 'package:flutter/material.dart';
import 'package:flutter_app/UserView.dart';
import 'Data.dart';
class Cards extends StatelessWidget {
  final user;
  final index;

  Cards(this.user, this.index);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      child: Container(
        width: 200,
        height: 200,
        child: Card(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(user[index].profileImg),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Text(user[index].name),
                  ),
                  Container(
                    child: Text(user[index].phoneNum),
                  ),
                  Container(
                    child: Text(user[index].job),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
