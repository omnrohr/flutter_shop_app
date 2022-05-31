import 'package:flutter/material.dart';
import 'package:shopapp/screens/details/details_screen.dart';
import '../../../models/product.dart';
import './product_card.dart';
import '../../../constants.dart';

class ProductsScrollList extends StatelessWidget {
  const ProductsScrollList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
            demo_product.length,
            (index) => Padding(
                  padding: EdgeInsets.only(left: defaultPadding / 4),
                  child: ProductCard(
                    image: demo_product[index].image,
                    title: demo_product[index].title,
                    price: demo_product[index].price,
                    bgColor: demo_product[index].bgColor,
                    onPress: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsScreen()));
                    },
                  ),
                )),
      ),
    );
  }
}
