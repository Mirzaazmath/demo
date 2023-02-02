import 'package:asws/Widgets/custombutton.dart';
import 'package:asws/utils/appStrings.dart';
import 'package:asws/utils/textwidgets.dart';
import 'package:flutter/material.dart';

import '../login/login.dart';
class SigmUpScreen extends StatefulWidget {
  const SigmUpScreen({Key? key}) : super(key: key);

  @override
  State<SigmUpScreen> createState() => _SigmUpScreenState();
}

class _SigmUpScreenState extends State<SigmUpScreen> {
  TextEditingController emailcontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  TextEditingController firstname =TextEditingController();
  TextEditingController lastname =TextEditingController();
  TextEditingController phonenumber =TextEditingController();
  TextEditingController confirmpassword =TextEditingController();
  bool isselect=false;
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    return Scaffold(

      //mobile
      body:width<800?SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: size/2,
              child: Image.asset("assets/images/signup.png",fit: BoxFit.fill,),
            ),
            TextWidgets().loginheading(AppStrings().signup, ),
            const   SizedBox(height: 20,),
            Container(
              margin:const EdgeInsets.all(30),
              width: double.infinity,

              padding:  EdgeInsets.all(size*0.03),

              color: Colors.white,
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const  Text("ASWS",style: TextStyle(color: Colors.green,fontSize: 30,fontWeight:FontWeight.bold),),
                  SizedBox(height: size*0.03,),

                  SizedBox(height: size*0.03,),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const   Text("First Name"),
                            const  SizedBox(height: 5,),
                            Container(

                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: TextFormField(
                                controller: firstname,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                          ],
                        ),
                      )),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const   Text("Last Name"),
                            const  SizedBox(height: 5,),
                            Container(
                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: TextFormField(
                                controller: lastname,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                          ],
                        ),
                      ))
                    ],
                  ),

                  SizedBox(height: size*0.03,),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const   Text("Phone Number"),
                            const  SizedBox(height: 5,),
                            Container(

                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: TextFormField(
                                controller: phonenumber,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                          ],
                        ),
                      )),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const   Text("Email"),
                            const  SizedBox(height: 5,),
                            Container(
                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: TextFormField(
                                controller: emailcontroller,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                  SizedBox(height: size*0.03,),
                  Row(
                    children: [
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const   Text("Password"),
                            const  SizedBox(height: 5,),
                            Container(

                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: TextFormField(
                                controller: passwordcontroller,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                          ],
                        ),
                      )),
                      Expanded(child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const   Text("Confirm Password"),
                            const  SizedBox(height: 5,),
                            Container(
                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              color: Theme.of(context).scaffoldBackgroundColor,
                              child: TextFormField(
                                controller: confirmpassword,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                          ],
                        ),
                      ))
                    ],
                  ),

                  SizedBox(height: size*0.03,),
                  Row(
                    children: [
                      Checkbox(value: isselect, onChanged: (value){
                        setState(() {
                          isselect=value!;
                        });

                      }),
                      const  Text("I Agree All terms and condition"),



                    ],
                  ),
                  SizedBox(height: size*0.03,),
                  CustomButton(ontap: (){}, title: "CREATE ACCOUNT"),



                  SizedBox(height: size*0.03,),
                  Center(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                      },
                      child: RichText(
                        text:const  TextSpan(
                          text: "Already have an account ?",
                          style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),

                          children:  <TextSpan>[

                            TextSpan(text: '  Log in!', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 20),),
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ) ,),


          ],
        ),
        //web
      ): SingleChildScrollView(
        child: Row(
          children: [
            Expanded(
              flex: 1,
                child: Container(
              child: Image.asset("assets/images/signup.png",fit: BoxFit.fill,),
            )),
            Expanded(
              flex: 2,
                child: Container(
              child: Padding(
                padding:  EdgeInsets.all(size<800?size*0.05:size*0.1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgets().loginheading(AppStrings().signup, ),
                    const   SizedBox(height: 20,),
                    Container(
                      width: double.infinity,

                      padding:  EdgeInsets.all(size*0.03),

                      color: Colors.white,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const  Text("ASWS",style: TextStyle(color: Colors.green,fontSize: 30,fontWeight:FontWeight.bold),),
                          SizedBox(height: size*0.03,),

                          SizedBox(height: size*0.03,),
                          Row(
                            children: [
                             Expanded(child: Padding(
                               padding: const EdgeInsets.only(right: 10),
                               child: Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                   const   Text("First Name"),
                                   const  SizedBox(height: 5,),
                                   Container(

                                     padding:const  EdgeInsets.symmetric(horizontal: 30),
                                     color: Theme.of(context).scaffoldBackgroundColor,
                                     child: TextFormField(
                                       controller: firstname,
                                       decoration: const InputDecoration(
                                           border: InputBorder.none
                                       ),
                                     ),

                                   ),
                                 ],
                               ),
                             )),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const   Text("Last Name"),
                                    const  SizedBox(height: 5,),
                                    Container(
                                      padding:const  EdgeInsets.symmetric(horizontal: 30),
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                      child: TextFormField(
                                        controller: lastname,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ),

                          SizedBox(height: size*0.03,),
                          Row(
                            children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const   Text("Phone Number"),
                                    const  SizedBox(height: 5,),
                                    Container(

                                      padding:const  EdgeInsets.symmetric(horizontal: 30),
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                      child: TextFormField(
                                        controller: phonenumber,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              )),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const   Text("Email"),
                                    const  SizedBox(height: 5,),
                                    Container(
                                      padding:const  EdgeInsets.symmetric(horizontal: 30),
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                      child: TextFormField(
                                        controller: emailcontroller,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ),
                          SizedBox(height: size*0.03,),
                          Row(
                            children: [
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const   Text("Password"),
                                    const  SizedBox(height: 5,),
                                    Container(

                                      padding:const  EdgeInsets.symmetric(horizontal: 30),
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                      child: TextFormField(
                                        controller: passwordcontroller,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              )),
                              Expanded(child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const   Text("Confirm Password"),
                                    const  SizedBox(height: 5,),
                                    Container(
                                      padding:const  EdgeInsets.symmetric(horizontal: 30),
                                      color: Theme.of(context).scaffoldBackgroundColor,
                                      child: TextFormField(
                                        controller: confirmpassword,
                                        decoration: const InputDecoration(
                                            border: InputBorder.none
                                        ),
                                      ),

                                    ),
                                  ],
                                ),
                              ))
                            ],
                          ),

                          SizedBox(height: size*0.03,),
                          Row(
                            children: [
                              Checkbox(value: isselect, onChanged: (value){
                                setState(() {
                                  isselect=value!;
                                });

                              }),
                              const  Text("I Agree All terms and condition"),



                            ],
                          ),
                          SizedBox(height: size*0.03,),
                          CustomButton(ontap: (){}, title: "CREATE ACCOUNT"),



                          SizedBox(height: size*0.03,),
                          Center(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>LoginPage()));
                              },
                              child: RichText(
                                text:const  TextSpan(
                                  text: "Already have an account ?",
                                  style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20),

                                  children:  <TextSpan>[

                                    TextSpan(text: '  Log in!', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: 20),),
                                  ],
                                ),
                              ),
                            ),
                          )

                        ],
                      ) ,)
                  ],
                ),
              ),
            )),
          ],
        ),
      ),

    );
  }
}

