import 'package:amazonclone/constants/global_variables.dart';
import 'package:amazonclone/features/account/widgets/single_product.dart';
import 'package:flutter/material.dart';

class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
// teporary list
  List list = [
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-model-unselect-gallery-1-202209_FMT_WHH?wid=1280&hei=492&fmt=p-jpg&qlt=80&.v=1660745142376',
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-model-unselect-gallery-1-202209_FMT_WHH?wid=1280&hei=492&fmt=p-jpg&qlt=80&.v=1660745142376',
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-model-unselect-gallery-1-202209_FMT_WHH?wid=1280&hei=492&fmt=p-jpg&qlt=80&.v=1660745142376',
    'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-model-unselect-gallery-1-202209_FMT_WHH?wid=1280&hei=492&fmt=p-jpg&qlt=80&.v=1660745142376',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: const Text(
                'Your Oders',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(right: 15),
              child: Text(
                'See All',
                style: TextStyle(
                  fontSize: 14,
                  color: GlobalVariables.selectedNavBarColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        // display orders
        Container(
          height: 170,
          padding: const EdgeInsets.only(left: 10, top: 20, right: 0),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: list.length,
            itemBuilder: (context, index) {
              return SingleProduct(
                image: list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
