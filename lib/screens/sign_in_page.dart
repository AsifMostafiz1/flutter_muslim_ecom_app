import 'package:flutter/material.dart';
import 'package:islami_ecom_app/constants/size_configs.dart';



class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {

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
                      Text('Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15,),

                      Text('Sign in with your data that you enter during registration',style: TextStyle(color: Colors.white,fontSize: 14),textAlign: TextAlign.center,)
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
                  SizedBox(
                    height: 45,
                    child: TextField(
                      cursorColor: Colors.grey,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: "Username or Email",
                          //suffixText: '\*',
                          //prefixText: '\*',
                          // prefixStyle: TextStyle(
                          //   color: Colors.red
                          // ),
                          hintStyle: const  TextStyle(
                              fontSize: 14,
                              color: Color(0xFF909090)
                          )
                      ),
                    ),
                  ),


                  const SizedBox(height: 10,),

                  SizedBox(
                    height: 45,
                    child: TextField(
                      cursorColor: Colors.grey,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                          hintText: "Your Password",
                          hintStyle:const TextStyle(
                              fontSize: 14,
                              color: Color(0xFF909090)
                          )
                      ),
                    ),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value){},activeColor: Colors.amber,shape:const  CircleBorder()),
                          const Text('Remember me',style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF909090)
                          )),

                        ],
                      ),

                      InkWell(
                        onTap: (){
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (Context) => ResetScreen()));
                        },
                        child: const Text("Forget Password ?",
                          style: TextStyle(color: Colors.amber,fontSize: 12),

                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15,),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0,right: 8),
                        child: Container(
                          width: sizeH*35,
                          height: 2,
                          color: Colors.grey,
                        ),
                      ),


                      Text('OR',style: TextStyle(color: Colors.grey),),


                      Padding(
                        padding: const EdgeInsets.only(left:8.0,right: 8),
                        child: Container(
                          width: sizeH*35,
                          height: 2,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: sizeV*5,),



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

                            Text("Sign In",
                              style: TextStyle(color: Colors.white,fontSize: 18),

                            ),
                          ],
                        ),
                      ),
                    ),
                  ),


                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Text("Don't Have An Account?",style:  TextStyle(
                        fontSize: 15,
                      ),),
                      SizedBox(width: 10,),
                      Text("Create One",style:  TextStyle(
                          fontSize: 15,
                          color: Color(0xFFF9B92E)
                      ),),
                    ],
                  ),
                ],
              ),
            ),


          ],
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
