import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quote/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quotes',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Hero(
                tag: "logo",
                child: Center(
                  child: Image.asset('assets/images/quote.png'),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "QUOTES",
                style: GoogleFonts.montserrat(
                    fontSize: 48.0, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "BANKS",
                style: GoogleFonts.montserrat(
                  fontSize: 36.0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
              FloatingActionButton(
                child: Icon(Icons.play_arrow),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Home();
                    },
                  ));
                },
                backgroundColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
