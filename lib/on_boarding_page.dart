import 'package:flutter/material.dart';
import 'model/splash_screen.dart';
import 'size_configs.dart';
import 'app_style.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  Container dotIndicator(index) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      height: 10,
      width: 10,
      decoration: BoxDecoration(color: Colors.amber, shape: BoxShape.circle),
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;
    int currentPageIndex = 0;

    PageController _pageController = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 20,
            child: PageView.builder(
              controller: _pageController,
              itemCount: splashScreenContent.length,
              itemBuilder: (context, index) => Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: sizeV * 40,
                    child: Image.asset(
                      splashScreenContent[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 4,
                  ),
                  Text(
                    splashScreenContent[index].title,
                    style: kTitle,
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: sizeV * 4,
                  ),
                  Text(splashScreenContent[index].subTitle,
                      style: kBodyText1, textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(onPressed: () {}, child: Text('Skip')),
                Row(
                    children: List.generate(
                  splashScreenContent.length,
                  (index) => dotIndicator(index),
                )),
                TextButton(onPressed: () {}, child: Text('Next')),
              ],
            ),
          ),
          SizedBox(
            height: sizeV * 5,
          ),
        ],
      )),
    );
  }
}
