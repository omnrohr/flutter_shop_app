import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants.dart';
import './category_Card.dart';
import './search_form.dart';
import '../../../models/category.dart';
import './categories.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
            height: 12,
          ),
          const Text(
            'best Outfits for you',
            style: TextStyle(fontSize: 18),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: SearchForm(),
          ),
          Categories(),
        ],
      ),
    );
  }
}
