import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Again Test App",
      color: Colors.black,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("HomePage of Scaffold"),
        ),
        body: Center(
          child: Text(
            "Hello World",
            textAlign: TextAlign.right,
            style: TextStyle(
              background: Paint()..color = Colors.blue,
              color: Colors.white,
              fontFamily: "Raleway",
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
        ),
      ),
    );
  }
}
