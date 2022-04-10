import 'package:flutter/material.dart';
import 'package:islami_ecom_app/screens/sign_in_page.dart';
import 'package:islami_ecom_app/widgets/custom_text_field.dart';
import 'package:islami_ecom_app/widgets/remember_me_signUp_page.dart';
import 'package:islami_ecom_app/widgets/already_have_accout_logIn_BTN.dart';

import '../constants/size_configs.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

TextEditingController _nameController = TextEditingController();
TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
TextEditingController _confirmPasswordController = TextEditingController();

bool _rememberCheck = false;

bool _hideNameText = false;
bool _hideEmailText = false;
bool _hidePasswordText = true;


class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            buildClipPath(sizeH),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  CustomTextField(
                    labelText: "Your Name",
                    hintText: "enter your name",
                    suffixIcon: Icons.person_outline_outlined,
                    controller: _nameController,
                    obscureText: _hideNameText,
                    textInputType: TextInputType.text,
                    changeTextVisibility: (){},
                    onPressed: () {

                    },
                  ),
                  CustomTextField(
                    labelText: "Email Address",
                    hintText: "example@gmail.com",
                    suffixIcon: Icons.email_outlined,
                    controller: _emailController,
                    obscureText: _hideEmailText,
                    textInputType: TextInputType.emailAddress,
                    changeTextVisibility: (){},
                    onPressed: () {

                    },
                  ),
                  CustomTextField(

                    labelText: "Password",
                    hintText: _hidePasswordText?"123456789":"*********",
                    suffixIcon:_hidePasswordText?Icons.visibility:Icons.visibility_off_outlined,
                    controller: _passwordController,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: _hidePasswordText,
                    changeTextVisibility: (){
                      setState(() {
                        _hidePasswordText= !_hidePasswordText;
                      });
                    },
                    onPressed: () {},
                  ),
                  CustomTextField(

                    labelText: "Confirm Password",
                    hintText: _hidePasswordText?"123456789":"*********",
                    suffixIcon:_hidePasswordText?Icons.visibility:Icons.visibility_off_outlined,
                    controller: _confirmPasswordController,
                    textInputType: TextInputType.visiblePassword,
                    obscureText: _hidePasswordText,
                    changeTextVisibility: (){
                      setState(() {
                        _hidePasswordText= !_hidePasswordText;
                      });
                    },
                    onPressed: () {},
                  ),
                  RememberMe(rememberCheck: _rememberCheck,),
                   SizedBox(
                    height: 15,
                  ),
                  SingUpButton(),
                  AlreadyHaveAccountLogInBTN()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  ClipPath buildClipPath(double sizeH) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        height: 250.0,
        width: sizeH * 100,
        decoration: BoxDecoration(
          color: Colors.amber,
        ),
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Please fill up the following fields with proper details ',
                style: TextStyle(color: Colors.white, fontSize: 14),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}





class SingUpButton extends StatelessWidget {
  const SingUpButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFFF9B92E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Sign Up",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;

  const CustomText(this.text, this.fontSize, this.color);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: fontSize),
    );
  }
}



class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - size.height / 2);
    var controllPoint = Offset(100, size.height);
    var endPoint = Offset(size.width, size.height);
    path.quadraticBezierTo(
        controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
