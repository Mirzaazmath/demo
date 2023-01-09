import 'package:flutter/material.dart';

import '../../Widgets/custombutton.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController emailcotroller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding:const  EdgeInsets.all(30),
          height: 500,
          width: 500,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const  Text("ASWS",style: TextStyle(color: Colors.green,fontSize: 30,fontWeight:FontWeight.bold),),
              const  SizedBox(height: 40,),
              Text("Forgot password",style: TextStyle(color: Colors.blue[900],fontSize: 30,fontWeight:FontWeight.w500)),
              const  SizedBox(height: 40,),
            const   Text("Enter your email for the verification process, we will send 4 digits code to your email",style: TextStyle(color: Colors.grey,fontSize: 15,)),
              const  SizedBox(height: 40,),

              const   Text("Email"),
              const  SizedBox(height: 5,),
              Container(
                padding:const  EdgeInsets.symmetric(horizontal: 30),
                color: Theme.of(context).scaffoldBackgroundColor,
                child: TextFormField(
                  controller: emailcotroller,
                  decoration: const InputDecoration(
                      border: InputBorder.none
                  ),
                ),

              ),
              const  SizedBox(height: 40,),
              CustomButton(ontap: (){}, title: "CONTINUE"),


            ],
          ),
        ),
      ),
    );
  }
}
