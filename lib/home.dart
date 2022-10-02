import 'package:flutter/material.dart';
import 'package:quote/quote.dart';


class Home extends StatelessWidget {
  final List<String> quotes = ["Act as if what you do makes a difference. It does.","What you get by achieving your goals is not as important as what you become by achieving your goals."];
  final List<String> author = ["William James","Zig Ziglar"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView.builder(itemCount:quotes.length, itemBuilder: (context, index) {
       return Quote(quotes: quotes[index], author: author[index]);
      },)
    );
  }
}

