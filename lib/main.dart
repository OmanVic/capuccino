import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: Colors.black,
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Colors.white),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset('assets/images/arrow-left.jpg',
            width: 40,
            height: 40),
          ),
          Expanded(
            child: Container(
              child:Center(
                child:Text(
                'Default') ,) 
                )
            ),
          Container(
            child: Image.asset('assets/images/Heart.jpg',
            width: 40,
            height: 40),
          )
        ],
      ),
    ),
      body: Column(children: []),
    );
  }
}

