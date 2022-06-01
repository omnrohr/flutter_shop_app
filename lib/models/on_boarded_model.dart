class OnBoard {
  final String image, title, subTitle;
  OnBoard({required this.image, required this.title, required this.subTitle});

  static final List<OnBoard> _onBoardedList = [
    OnBoard(
      image: 'https://assets9.lottiefiles.com/packages/lf20_7kjflsve.json',
      title: 'Find the nearest \nGas truck to you',
      subTitle: 'With one click you will whsle to Gas truck',
    ),
    OnBoard(
      image: 'https://assets9.lottiefiles.com/packages/lf20_7kjflsve.json',
      title: 'Find the nearest \nGas truck to you',
      subTitle: 'With one click you will whsle to Gas truck',
    ),
    OnBoard(
      image: 'https://assets9.lottiefiles.com/packages/lf20_7kjflsve.json',
      title: 'Find the nearest \nGas truck to you',
      subTitle: 'With one click you will whsle to Gas truck',
    ),
    OnBoard(
      image: 'https://assets9.lottiefiles.com/packages/lf20_7kjflsve.json',
      title: 'Find the nearest \nGas truck to you',
      subTitle: 'With one click you will whsle to Gas truck',
    ),
  ];

  static List<OnBoard> get onBoard {
    return [..._onBoardedList];
  }
}
