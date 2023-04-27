import "package:flutter/material.dart";
import "quote.dart";

void main() {
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<Quote> quotes = [
      Quote(text: "All is well", author: "Arikaran"),
      Quote(text: "Always true to be yourself", author: "Arikaran")
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Awesome Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Center(
          child: Column(
            children: quotes.map((quote) {
              return Text('${quote.text} - ${quote.author}',
                  style: TextStyle(fontSize: 15.0, color: Colors.black));
            }).toList(),
          ),
        ),
      ),
    );
  }
}
