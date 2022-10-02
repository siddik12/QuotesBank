import 'package:flutter/material.dart';
import 'package:share/share.dart';

class Quote extends StatelessWidget {
  const Quote({
    Key key,
    @required this.quotes,
    @required this.author,
  }) : super(key: key);

  final String quotes;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 32.0,
            ),
            InkWell(
              child: Icon(Icons.arrow_back),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 32.0,
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Hero(
                    tag: "logo",
                    child: Container(
                      child: Image.asset('assets/images/quote.png'),
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                  SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    quotes,
                    style:
                        TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12.0,
            ),
            Text(
              author,
              style:
                  TextStyle(color: Colors.black45, fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 12.0,
            ),
            Spacer(),
            FloatingActionButton(
              onPressed: () {
                Share.share("\"$quotes\" \n $author",
                    subject: "Share the quotes");
              },
              backgroundColor: Colors.black,
              child: Icon(Icons.share),
            ),
          ],
        ),
      ),
    );
  }
}
