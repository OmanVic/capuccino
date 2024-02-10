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
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
      home: const MyHomePage(title: 'Detail'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

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
              child: Text(
                title,
                style: TextStyle(fontFamily: 'Sora-Bold.ttf'),
              ),
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
        child: Column(
            children: [CappucinoDisplay(), DescriptionPage(), PaymentPage()]),
      ),
    );
  }
}

class CappucinoDisplay extends StatelessWidget {
  CappucinoDisplay({super.key});

  final Image CappucunoPicture =
      Image.asset('assets/images/Rectangle 1706.jpg');
  final String ProductName = 'Cappucino';
  final String ProductNameType = 'with Chocolate';
  final String ProductRating = '4.8';
  final String ProductSales = '(230)';
  final Image ProductDescription1 = Image.asset('assets/images/bean.jpg');
  final Image ProductDescription2 = Image.asset('assets/images/milk.jpg');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CappucunoPicture,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            ProductName,
            style: TextStyle(fontFamily: 'Sora-ExtraBold.ttf'),),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(ProductNameType,
          style: TextStyle(fontFamily:'Sora-Thin.ttf' )),
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
                child: Text(ProductRating,
                style: TextStyle(fontFamily: 'Sora-Bold.ttf'),),
              ),
              Container(
                child: Text(ProductSales,
                style: TextStyle(fontFamily: 'Sora-Thin.ttf')),
              ),
              Spacer(),
               Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(155, 155, 155, 0.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(20, 10),
                    topRight: Radius.elliptical(20, 10),
                    bottomRight: Radius.elliptical(10, 20),
                    bottomLeft: Radius.elliptical(10, 20)
                  ),
                  border: Border.all(
                    color: Color.fromRGBO(155, 155, 155, 0.5),
                    width: 3.0,
                  ),
                ),
                child: ProductDescription1,
              ),
              SizedBox(width: 20),
                // Stack(
                //   children: [
                //     // Child Container
                //     Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(50.0)
                //       ),
                //       child: Container(

                        
                //         width: 50,
                //         height: 50,
                //         child: ProductDescription1,
                //       ),
                //     ),
                //     // Overlay Container
                //     Positioned.fill(
                //       child: Container(
                //         color: Color.fromRGBO(155, 155, 155, 0.5), // 9B9B9B with 50% opacity
                //       ),
                //     ),
                //   ],
                // ),
                //   Stack(
                //   children: [
                //     // Child Container
                //     Container(
                //       decoration: BoxDecoration(
                //         borderRadius: BorderRadius.circular(50.0)
                //       ),
                //       child: Container(

                        
                //         width: 50,
                //         height: 50,
                //         child: ProductDescription2,
                //       ),
                //     ),
                //     // Overlay Container
                //     Positioned.fill(
                //       child: Container(
                //         color: Color.fromRGBO(155, 155, 155, 0.5), // 9B9B9B with 50% opacity
                //       ),
                //     ),
                //   ],
                // ),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(155, 155, 155, 0.5),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.elliptical(20, 10),
                    topRight: Radius.elliptical(20, 10),
                    bottomRight: Radius.elliptical(10, 20),
                    bottomLeft: Radius.elliptical(10, 20)
                  ),
                  border: Border.all(
                    color: Color.fromRGBO(155, 155, 155, 0.5),
                    width: 3.0,
                  ),
                ),
                child: ProductDescription2,
              ),
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
