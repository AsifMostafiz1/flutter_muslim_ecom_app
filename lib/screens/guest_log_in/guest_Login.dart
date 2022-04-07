import 'package:flutter/material.dart';
import 'package:islami_ecom_app/constants/app_style.dart';
import 'package:islami_ecom_app/constants/size_configs.dart';
import 'package:islami_ecom_app/screens/guest_log_in/otp_input_screen.dart';



class GuestLogin extends StatefulWidget {
   GuestLogin({Key? key}) : super(key: key);

  @override
  State<GuestLogin> createState() => _GuestLoginState();
}

class _GuestLoginState extends State<GuestLogin> {
  TextEditingController _phoneController = TextEditingController();
  String phoneErrorText = '';

  @override
  Widget build(BuildContext context) {
    SizeConfigure().init(context);
    double sizeV = SizeConfigure.blockSizeV!;
    double sizeH = SizeConfigure.blockSizeH!;
    return Scaffold(
      body: SingleChildScrollView(


        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20),
          child: Column(

            children: [

              SizedBox(
                height: sizeV * 10,
              ),

              Container(
                child: Center(child: Text('Create Account'),),
              ),

              SizedBox(
                height: sizeV * 20,
              ),


              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child: Text(
                      "Enter your mobile number to create account",
                      style: kTitleTextBlack,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: sizeV * 7,
                  ),
                  Text("We will send you one time password (OTP)",
                      style: kSubTitleTextGrey, textAlign: TextAlign.center),

                  SizedBox(height: sizeV*7,),

                  Padding(
                    padding: const EdgeInsets.only(left: 10.0,right: 10),
                    child: SizedBox(
                      height: 45,
                      child: TextFormField(


                        controller: _phoneController,
                        textAlign: TextAlign.center,
                        cursorColor: Colors.grey,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            errorText: phoneErrorText,
                            errorStyle: TextStyle(color: Colors.red),
                            hintText: "Enter Phone Number",
                            hintStyle: const  TextStyle(
                                fontSize: 14,
                                color: Color(0xFF909090)
                            )
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: sizeV*7,),

                  SizedBox(
                    child: ElevatedButton(
                      onPressed: () {

                        if(_phoneController.text.isEmpty ){
                          setState(() {
                            phoneErrorText = "Enter Your Phone Number";
                          });
                        }
                        if(_phoneController.text.length<11){
                          setState(() {
                            phoneErrorText = "Enter Valid Phone Number";
                          });
                        }else{
                          Navigator.push(context, MaterialPageRoute(builder:(context)=>OtpInputScreen(phoneNumber: _phoneController.text)));
                        }

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
                ],

              ),


            ],

          ),
        ),
      ),
    );
  }
}

