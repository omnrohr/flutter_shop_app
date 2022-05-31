import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants.dart';
import 'componenets/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: detailsAppBar(),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: defaultPadding * 2),
            height: size.height * 0.37,
            child: Image.asset(
              'assets/images/product_1.png',
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding * 2),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text('Casual Henley Shirts',
                              style: Theme.of(context).textTheme.headline6),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text('\$175',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Text(
                      'A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.',
                    ),
                    const SizedBox(
                      height: defaultPadding,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Colors',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                    ),
                    const SizedBox(height: defaultPadding / 2),
                    Row(
                      children: const [
                        ColorDot(
                          color: Color(0xFFBEE8EA),
                          isActive: false,
                        ),
                        ColorDot(
                          color: Color(0xFF141B4A),
                          isActive: true,
                        ),
                        ColorDot(
                          color: Color(0xFFF4E5C3),
                          isActive: false,
                        ),
                      ],
                    ),
                    const SizedBox(height: defaultPadding),
                    Center(
                      child: SizedBox(
                        height: 48,
                        width: 200,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: const StadiumBorder()),
                          onPressed: () {},
                          child: const Text('Add to cart'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar detailsAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: const BackButton(
        color: Colors.black,
      ),
      actions: [
        // Container(
        //   width: 45,
        //   margin: EdgeInsets.all(6),
        //   padding: EdgeInsets.all(defaultPadding / 2),
        //   decoration: BoxDecoration(
        //       color: Colors.white, borderRadius: BorderRadius.circular(40)),
        //   child: SvgPicture.asset(
        //     'assets/icons/Heart.svg',
        //   ),
        // ),
        IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            backgroundColor: Colors.white,
            child: SvgPicture.asset(
              'assets/icons/Heart.svg',
              height: 20,
            ),
          ),
        ),
      ],
    );
  }
}
