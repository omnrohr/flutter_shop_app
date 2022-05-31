import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.bgColor,
  }) : super(key: key);
  final String image, title;
  final int price;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding / 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(defaultPadding - 6),
        color: Colors.white,
      ),
      width: 154,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: bgColor,
                borderRadius: BorderRadius.circular(defaultPadding / 2)),
            child: Image.asset(
              image,
              height: 132,
            ),
          ),
          SizedBox(
            height: defaultPadding / 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // RichText(
              //   textAlign: TextAlign.left,
              //   text: TextSpan(
              //     children: [
              //       TextSpan(
              //           text: 'Long Sleeve\n',
              //           style: Theme.of(context).textTheme.bodyText2),
              //       TextSpan(
              //           text: 'Shirts',
              //           style: Theme.of(context).textTheme.bodyText2),
              //     ],
              //   ),
              // ),

              Expanded(
                  child: Text(
                title,
                style: TextStyle(color: Colors.black),
              )),
              SizedBox(
                width: defaultPadding / 4,
              ),
              Text(
                '\$$price',
                style: Theme.of(context).textTheme.subtitle2,
              )
            ],
          ),
        ],
      ),
    );
  }
}
