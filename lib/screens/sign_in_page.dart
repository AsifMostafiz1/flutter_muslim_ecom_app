import 'package:flutter/material.dart';


class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor:const Color(0xFFF9B92E),
      //   centerTitle: true,
      //   leading: IconButton(
      //     icon:const Icon(Icons.list_outlined,size: 30,color: Colors.white,),
      //     color: Colors.black,
      //     onPressed: () {  },
      //   ),
      //   actions:const [
      //     Icon(Icons.favorite_border_outlined,size: 30,color: Colors.white),
      //     SizedBox(width: 15,),
      //     Icon(Icons.account_circle_outlined,size: 30,color: Colors.white),
      //     SizedBox(width: 7,),
      //
      //   ],
      //
      // ),
      body: SingleChildScrollView(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              children:const [
                Text("Home",style: TextStyle(
                    color: Color(0xFF909090),
                    fontSize: 14
                ),),
                SizedBox(width: 4,),
                Icon(Icons.arrow_forward_ios_rounded,size: 14,color: Color(0xFF909090),),
                SizedBox(width: 4,),
                Text("Sign In",style:  TextStyle(
                    fontSize: 16,
                    color: Color(0xFFF9B92E)
                ),),
              ],
            ),

            Container(
              height: MediaQuery.of(context).size.height/7,
            ),

            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children:[
                 Text("Sign In".toUpperCase(),style: const TextStyle(
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
                    Text("Create One",style:  TextStyle(
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

                      Text("Sign In",
                        style: TextStyle(color: Colors.white,fontSize: 18),

                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),


    );
  }
}
