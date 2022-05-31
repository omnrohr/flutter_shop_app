import 'package:flutter/material.dart';
import '../../../constants.dart';

class SectionHeaderWithSeeAll extends StatelessWidget {
  const SectionHeaderWithSeeAll({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          top: defaultPadding * 1.5, bottom: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          Text(
            'See All',
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
