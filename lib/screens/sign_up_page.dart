import 'package:flutter/material.dart';
import 'package:islami_ecom_app/screens/sign_in_page.dart';

import '../constants/size_configs.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

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

            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 250.0,
                width: sizeH*100,
                decoration: BoxDecoration(
                  color: Colors.amber,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15,),

                      Text('Please fill up the following fields with proper details ',style: TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  SizedBox(height: sizeV*3,),
                  const CustomTextField('Your Name'),

                  const SizedBox(height: 10,),

                  const CustomTextField('Your Email Address'),

                  const SizedBox(height: 10,),

                  const CustomTextField("Your Password"),
                  const SizedBox(height: 10,),
                  const CustomTextField('Confirm Password'),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Checkbox(value: true, onChanged: (value){},activeColor: Colors.amber,shape:const  CircleBorder()),
                          const Text('Remember me',style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF909090)
                          )),

                        ],
                      ),

                    ],
                  ),
                  const SizedBox(height: 15,),



                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {

                      },
                      style: ElevatedButton.styleFrom(primary: const Color(0xFFF9B92E),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      child: Padding(
                        padding: const  EdgeInsets.symmetric(vertical: 10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [

                            Text("Sign Up",
                              style: TextStyle(color: Colors.white,fontSize: 18),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),



                  Padding(
                    padding: const EdgeInsets.all(26.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:[
                        Text("Don't Have An Account?",style:  TextStyle(
                          fontSize: 15,
                        ),),
                        SizedBox(width: 10,),
                        InkWell(
                          onTap: (){
                            Navigator.push(context,MaterialPageRoute(builder: (builder)=>SignInPage()));
                          },
                          child: Text("Log in",style:  TextStyle(
                              fontSize: 15,
                              color: Color(0xFFF9B92E)
                          ),),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),


          ],
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
    return Text(text,style: TextStyle(
        color: color,
        fontSize: fontSize
    ),);
  }
}

class CustomTextField extends StatelessWidget {
  final String hintText;


  const CustomTextField(this.hintText);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextField(
        cursorColor: Colors.grey,
        textInputAction: TextInputAction.next,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            hintText: hintText,
            hintStyle: const  TextStyle(
                fontSize: 12,
                color: Color(0xFF909090)
            )
        ),
      ),
    );
  }
}

class MyClipper  extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0, size.height - size.height/2);
    var controllPoint = Offset(100,size.height);
    var endPoint = Offset(size.width , size.height);
    path.quadraticBezierTo(controllPoint.dx, controllPoint.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

}
