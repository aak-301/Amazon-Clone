import 'package:flutter/material.dart';

class DealOfTheDay extends StatefulWidget {
  const DealOfTheDay({super.key});

  @override
  State<DealOfTheDay> createState() => _DealOfTheDayState();
}

class _DealOfTheDayState extends State<DealOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 10, top: 15),
          child: const Text(
            'Deal of the Day',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Image.network(
          "https://cdn.vox-cdn.com/uploads/chorus_asset/file/24371433/236492_MacBook_Pro_16__2023__AKrales_0141.jpg",
          height: 235,
          fit: BoxFit.fitHeight,
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: const Text(
            'Rs. 89,000',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
        ),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
          child: const Text(
            'Mac Book',
            maxLines: 2,
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.network(
                  fit: BoxFit.fitHeight,
                  width: 100,
                  height: 100,
                  'https://5.imimg.com/data5/SELLER/Default/2022/11/FH/CG/IX/97646359/apple-macbook-laptop.jpg'),
              Image.network(
                  fit: BoxFit.fitHeight,
                  width: 100,
                  height: 100,
                  'https://imgeng.jagran.com/images/2023/apr/best%20apple%20laptops%20price%20in%20India1682674778272.jpg'),
              Image.network(
                  fit: BoxFit.fitHeight,
                  width: 100,
                  height: 100,
                  'https://5.imimg.com/data5/SELLER/Default/2022/11/FH/CG/IX/97646359/apple-macbook-laptop.jpg'),
              Image.network(
                  fit: BoxFit.fitHeight,
                  width: 100,
                  height: 100,
                  'https://imgeng.jagran.com/images/2023/apr/best%20apple%20laptops%20price%20in%20India1682674778272.jpg'),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          alignment: Alignment.topLeft,
          child: Text(
            'See all deals',
            style: TextStyle(
              color: Colors.cyan[800],
            ),
          ),
        ),
      ],
    );
  }
}
