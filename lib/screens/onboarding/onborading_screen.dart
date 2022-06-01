import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shopapp/constants.dart';
import '../../models/on_boarded_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _pageController = PageController(initialPage: 0);
  int _pageIndex = 0;
  final _onBoardList = OnBoard.onBoard;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  controller: _pageController,
                  itemCount: _onBoardList.length,
                  itemBuilder: (context, index) => OnBoardCard(
                    image: _onBoardList[index].image,
                    title: _onBoardList[index].title,
                    subTitle: _onBoardList[index].subTitle,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                      _onBoardList.length,
                      (i) => Padding(
                            padding: const EdgeInsets.only(right: 4.0),
                            child: DotIndicator(
                              isActive: _pageIndex == i,
                            ),
                          )),
                  const Spacer(),
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(), primary: primaryColor),
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeInOut);
                      },
                      child: _pageIndex == _onBoardList.length - 1
                          ? const Icon(
                              Icons.check,
                              size: 30,
                            )
                          : const Icon(
                              Icons.keyboard_arrow_right,
                              size: 30,
                            ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
        color: isActive ? primaryColor : primaryColor.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}

class OnBoardCard extends StatelessWidget {
  const OnBoardCard({
    Key? key,
    required this.image,
    required this.title,
    required this.subTitle,
  }) : super(key: key);
  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Lottie.network(image, width: MediaQuery.of(context).size.width),
        const Spacer(),
        Text(
          title,
          style: Theme.of(context)
              .textTheme
              .headline4
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        Text(
          subTitle,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        const Spacer()
      ],
    );
  }
}
