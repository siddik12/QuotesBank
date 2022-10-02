import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({Key key}) : super(key: key);

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes',
      home: Scaffold(
        body: SafeArea(
          child: ListView(
            children: [
              ElevatedButton(
                child: Text("All SMS Collection"),
                onPressed: () {},
              ),
              ElevatedButton(
                child: Text("Share This App"),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
