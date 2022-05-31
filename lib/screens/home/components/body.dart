import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import './category_Card.dart';
import './search_form.dart';
import '../../../models/category.dart';
import '../../../models/product.dart';
import './categories.dart';
import './products_scroll_list.dart';
import './section_header_seeall.dart';
import './product_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Explore',
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: defaultPadding / 2,
          ),
          const Text(
            'best Outfits for you',
            style: TextStyle(fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: defaultPadding),
            child: SearchForm(),
          ),
          const Categories(),
          const SectionHeaderWithSeeAll(
            title: 'New Arrival',
          ),
          const ProductsScrollList(),
          const SectionHeaderWithSeeAll(title: 'Popular'),
          const ProductsScrollList(),
          SizedBox(
            height: defaultPadding * 4,
          ),
        ],
      ),
    );
  }
}
