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
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: CappucinoDisplay(),
              ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0),
               child: DescriptionPage(),
             ), 
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 10.0),
               child: PaymentPage(),
             )
             ]
             ),)
        
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
          padding: const EdgeInsets.only(bottom: 10.0),
          child: CappucunoPicture,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            ProductName,
            style: TextStyle(
                fontFamily: 'Sora-ExtraBold.ttf',
                fontSize: 27,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(ProductNameType,
              style: TextStyle(
                  fontFamily: 'Sora-Regular.ttf',
                  color: Color.fromRGBO(155, 155, 155, 0.5))),
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
                child: Text(
                  ProductRating,
                  style: TextStyle(
                      fontFamily: 'Sora-Bold.ttf',
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Container(
                child: Text(
                  ProductSales,
                  style: TextStyle(
                    fontFamily: 'Sora-Regular.ttf',
                  ),
                ),
              ),
              Spacer(),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(155, 155, 155, 0.5),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: Color.fromRGBO(155, 155, 155, 0.5),
                    width: 3.0,
                  ),
                ),
                child: ProductDescription1,
              ),
              SizedBox(width: 20),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(155, 155, 155, 0.5),
                  borderRadius: BorderRadius.circular(15),
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

  final String ProductDescription =
      'A cappacino is an approximately 150ml (5 oz) breverage, with 25 ml of espresso coffee and 85ml of fresh milk for..';

  final String ProductDescriptionLink = 'Read More';
  final Color blackcolor = const Color(0xFF2F2D2C);
  final Color BrownColor = const Color(0xFFC67C4E);
  final Color GreyColor = const Color(0xff9B9B9B);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Description',
            style: TextStyle(
                fontFamily: 'Sora-ExtraBold.ttf',
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: RichText(
                text: TextSpan(children: <TextSpan>[
              TextSpan(
                  text: ProductDescription,
                  style: TextStyle(
                      fontFamily: 'Sora-Regular.ttf',
                      color: Color.fromRGBO(155, 155, 155, 0.5),
                      fontSize: 16)),
              TextSpan(
                  text: ProductDescriptionLink,
                  style: TextStyle(
                      fontFamily: 'Sora-Medium.ttf',
                      color: Color(0xFFC67C4E),
                      fontSize: 18))
            ]))),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            'Size',
            style: TextStyle(
                fontFamily: 'Sora-ExtraBold.ttf',
                fontSize: 25,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          children: [
            _CappacinoSize('S', blackcolor, Colors.white, GreyColor),
            SizedBox(width: 15),
            _CappacinoSize(
                'M', BrownColor, BrownColor.withOpacity(0.2), BrownColor),
            SizedBox(width: 15),
            _CappacinoSize('L', blackcolor, Colors.white, GreyColor)
          ],
        )
      ],
    );
  }

  Widget _CappacinoSize(
      String text, Color color, Color background, Color border) {
    return Container(
      width: 90,
      height: 50,
      decoration: BoxDecoration(
        color: background,
        border: Border.all(
          color: border,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 22,
            color: color,
          ),
        ),
      ),
    );
  }
}

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});
  final String PriceAmount = '\$4.53';

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Column(
          children: [
            Text(
              'Price',
              style: TextStyle(
                fontFamily: 'Sora-Regular.ttf',
                color: Color.fromRGBO(155, 155, 155, 0.5),
                fontSize: 16
              ),
              ), 
          Text(
            PriceAmount,
            style: TextStyle(
              fontFamily: 'Sora-ExtraBold.ttf',
              color:  Color(0xFFC67C4E),
              fontSize: 25
            ),
            )
            ],
        ),
        Spacer(),
        Container(
          width: 200,
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xFFC67C4E),
            borderRadius: BorderRadius.circular(15)
          ),
          child:Center(
            child: Text(
            'Buy Now',
            style: TextStyle(
              fontFamily: 'Sora-ExtraBold.ttf',
              fontSize: 25,
              color: Colors.white
            ),
          ) ,
          ),
        )
        
      ],
    );
  }
}
