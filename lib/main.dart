import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home Page"),
          backgroundColor: Colors.amber,
        ),
        body: Container(
          height: 200,
          color: Colors.blue,
          margin: EdgeInsets.all(20),
          child: Center(
              child: Text(
            "Hello world",
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              backgroundColor: Colors.yellow,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.5,
            ),
          )),
        ));
  }
}
