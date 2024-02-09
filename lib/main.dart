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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Image.asset('assets/images/arrow-left.jpg',
                  width: 40, height: 40),
            ),
            Expanded(
                child: Container(
                    child: Center(
              child: Text('Default'),
            ))),
            Container(
              child:
                  Image.asset('assets/images/Heart.jpg', width: 40, height: 40),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(children: 
        [CappucinoDisplay(), DescriptionPage(), PaymentPage()]),
      ),
    );
  }
}

class CappucinoDisplay extends StatelessWidget {
  const CappucinoDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Image.asset('assets/images/Rectangle 1706.jpg'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Cappucino'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('with Chocolate'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Icon(Icons.star, color: Colors.yellow),
              ),
              Container(
                child: Text('4.8'),
              ),
              Container(
                child: Text('(230)'),
              ),
              Spacer(),
              Container(
                child: Image.asset('assets/images/bean.jpg'),
              ),
              Container(
                child: Image.asset('assets/images/milk.jpg'),
              )
            ],
          ),
        )
      ],
    );
  }
}

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Description'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
              'A cappacino is an approximately 150ml (5 oz) breverage, with 25 ml of espresso coffee and 85ml of fresh milk for..'),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text('Size'),
        ),
        Row(
          children: [
            _CappacinoSize('S'),
            _CappacinoSize('M'),
            _CappacinoSize('L')
          ],
        )
      ],
    );
  }

  Widget _CappacinoSize(String text) {
    return Container(
      width: 100,
      height: 100,
      child: Text(text),
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [Text('Price'), Text('\$4.53')],
        ),
        Spacer(),
        Text('Buy Now')
      ],
    );
  }
}
