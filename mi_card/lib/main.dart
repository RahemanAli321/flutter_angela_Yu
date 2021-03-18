import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Rich"),
        ),
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Text("container"),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Text("container"),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.red,
                    child: Text("container"),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Text("container"),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: Colors.green,
                    child: Text("container"),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Text("container"),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.black,
                    child: Text("container"),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 100,
                    height: 100,
                    color: Colors.blue,
                    child: Text("container"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
