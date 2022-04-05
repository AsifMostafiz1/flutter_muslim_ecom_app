import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color(0xFFF9B92E),
        centerTitle: true,
        leading: IconButton(
          icon:const Icon(Icons.list_outlined,size: 30,color: Colors.white,),
          color: Colors.black,
          onPressed: () {  },
        ),
        actions:const [
          Icon(Icons.favorite_border_outlined,size: 30,color: Colors.white),
          SizedBox(width: 15,),
          Icon(Icons.account_circle_outlined,size: 30,color: Colors.white),
          SizedBox(width: 7,),

        ],

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                children:const [
                  CustomText("Home",16,Color(0xFF909090)),
                  SizedBox(width: 4,),
                  Icon(Icons.arrow_forward_ios_rounded,size: 14,color: Color(0xFF909090),),
                  SizedBox(width: 4,),
                  CustomText("Sing Up",16,Color(0xFFF9B92E)),
                ],
              ),

              Container(
                height: MediaQuery.of(context).size.height/15,
              ),

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                  Text("Sign UP".toUpperCase(),style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFFF9B92E),

                  ),),

                  const SizedBox(height: 10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:const [
                      Text("Don't Have An Account?",style:  TextStyle(
                        fontSize: 15,
                      ),),
                      SizedBox(width: 10,),
                      Text("Log in",style:  TextStyle(
                          fontSize: 15,
                          color: Color(0xFFF9B92E)
                      ),),
                    ],
                  )
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.width/15,
              ),
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
                      style: TextStyle(color: Colors.red,fontSize: 12),

                    ),
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
            ],
          ),
        )  
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
