import 'package:flutter/material.dart';
import 'package:islami_ecom_app/constants/size_configs.dart';
import 'package:blur/blur.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizev = SizeConfigure.blockSizeV!;
    double sizeh = SizeConfigure.blockSizeH!;

    return Container(
      height: sizev*100,
      width: sizeh*100,
      decoration: BoxDecoration(
        // boxShadow: ,

        // image: DecorationImage(image: AssetImage('assets/images/welcomeImage.png'),
        //    fit: BoxFit.cover)
      ),
      child: Image.asset('assets/images/welcomeImage.png',fit: BoxFit.fill,),

    );
  }
}
