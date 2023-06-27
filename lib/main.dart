// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  // const myApp({super.key});
  int counter = 1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dynamic Increment App'),
          centerTitle: true,
          backgroundColor: Colors.deepPurple[900],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                fontSize: 50 + double.parse(counter.toString()),
                color: Colors.deepPurple[900],
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                    print(counter);
                  },
                  child: Icon(Icons.add),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[900]),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (counter != 1) {
                      setState(() {
                        counter--;
                      });
                    }
                    print(counter);
                  },
                  child: Icon(Icons.remove),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple[900]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
