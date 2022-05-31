import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import './components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: theAppBar(context),
      body: const Body(),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  AppBar theAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/menu.svg',
          fit: BoxFit.contain,
        ),
        onPressed: () {},
      ),
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Location.svg',
              fit: BoxFit.contain,
            ),
          ),
          Text(
            '15/2 New Texas',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ],
      ),
      actions: [
        // Container(
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(5),
        //     color: Colors.white,
        //   ),
        //   margin: EdgeInsets.all(defaultPadding / 2),
        //   padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
        //   child: SvgPicture.asset(
        //     'assets/icons/Notification.svg',
        //   ),
        // ),
        IconButton(
          disabledColor: Colors.white,
          onPressed: (() {}),
          icon: SvgPicture.asset('assets/icons/Notification.svg'),
        ),
      ],
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: defaultPadding,
            left: defaultPadding * 3,
            right: defaultPadding * 3),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/hut.png',
                height: 22,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/shopping-cart.png',
                height: 22,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/heart.png',
                height: 22,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/images/user.png',
                height: 22,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
