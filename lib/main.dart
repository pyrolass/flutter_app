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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: IconButton(icon: Icon(Icons.add_location)),
        leading: IconButton(icon: Icon(Icons.menu)),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [],
      )),
    );
  }
}
