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
  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: splashScreenContent.length,
              itemBuilder: (context, index) =>
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: sizeV*50,
                        child: Image.asset(splashScreenContent[index].image,fit: BoxFit.cover,),
                      ),
                      SizedBox(
                        height: sizeV*2,
                      ),
                      Text(splashScreenContent[index].title,style: kTitle,textAlign:TextAlign.center,),

                      SizedBox(
                        height: sizeV*2.7,
                      ),

                      Text(splashScreenContent[index].subTitle,style: kBodyText1,textAlign:TextAlign.center),
                    ],
                  ),
            ),
          )
        ],
      )),
    );
  }
}
