import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: MyHome());
}

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _count++;
          });
        },
        child: Icon(Icons.add),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You Have Pressed the button this many times",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            Text(
              _count.toString(),
              style: TextStyle(
                fontSize: 32,
              ),
            ),
            IconButton(
              icon: Icon(Icons.remove),
              onPressed: () {
                setState(
                  () {
                    _count--;
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
