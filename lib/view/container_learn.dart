import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        backgroundColor: Colors.amber,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 200,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(
                Radius.circular(20),
              ),
              color: Colors.amber, // ✅ Moved inside `BoxDecoration`
              border: Border.all(color: Colors.red, width: 5),
            ),
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
              ),
            ),
          ),
          SizedBox(height: 20), // Add space between Container and Button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ContainerPage()),
              );
            },
            child: Text("Go to Next Page"),
          ),
        ],
      ),
    );
  }
}
