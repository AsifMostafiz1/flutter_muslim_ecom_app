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

        image: DecorationImage(image: AssetImage('assets/images/welcomeImage.png'),
            colorFilter: ColorFilter.mode(Colors.black87, BlendMode.hardLight),
         fit: BoxFit.cover)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(btnName: 'Sign In',btnColor: Colors.white,textColor: Colors.amber,),
          CustomButton(btnName: 'Sign Up',btnColor: Colors.blueAccent,textColor: Colors.white,),
          CustomButton(btnName: 'As A Guest',btnColor: Colors.blueAccent,textColor: Colors.white,),

        ],
      ),

    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.btnName,
    required this.btnColor,
    required this.textColor
  }) : super(key: key);

  final String btnName;
  final Color btnColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {

        },
        style: ElevatedButton.styleFrom(primary: btnColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const  EdgeInsets.symmetric(vertical: 20,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Text( btnName,
                style: TextStyle(color: textColor,fontSize: 18),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
