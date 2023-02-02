
import 'dart:convert';

import 'package:asws/ApiEndPoints/apiendpoint.dart';

import 'package:asws/pages/signup/sign_up.dart';
import 'package:asws/utils/appStrings.dart';
import 'package:asws/utils/textwidgets.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';

import '../../Widgets/custombutton.dart';
import '../DashBoard/dashboard.dart';
import '../forgotpassword/forgotpassword.dart';
class LoginPage extends StatefulWidget {
  const LoginPage ({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController namecontroller =TextEditingController();
  TextEditingController passwordcontroller =TextEditingController();
  var box = Hive.box('testBox');
  bool isselect=false;
  bool isloading=false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namecontroller.text="super";
    passwordcontroller.text="super@pass";
  }
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    print(width);

    return Scaffold(

          body:width<800?SingleChildScrollView(
            // mobile
            child: Column(
              children: [
                Container(height: size/2,
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/login.png",fit: BoxFit.fill,),
                ),
                Container(
                  margin:const  EdgeInsets.all(30),

                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextWidgets().loginheading(AppStrings().sign, ),
                      SizedBox(height: size*0.03,),
                      Container(
                        width: double.infinity,

                        padding:  EdgeInsets.all(size*0.03),

                        color: Colors.white,
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("ASWS",style: TextStyle(color: Colors.green,fontSize:  width<1350||size<800?30:40,fontWeight:FontWeight.bold),),
                            SizedBox(height: size*0.03,),
                            Text("Welcome to ASWS",style: TextStyle(color: Colors.blue[900],fontSize: width<1350||size<800?30:40,fontWeight:FontWeight.w500)),
                            SizedBox(height: size*0.03,),
                            const   Text("Email"),
                            const  SizedBox(height: 5,),
                            Container(
                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                  border: Border.all( color :Colors.grey.shade300)

                              ),

                              child: TextFormField(
                                controller: namecontroller,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                            SizedBox(height: size*0.03,),
                            const   Text("Password"),
                            const  SizedBox(height: 5,),
                            Container(
                              padding:const  EdgeInsets.symmetric(horizontal: 30),
                              decoration: BoxDecoration(
                                  color: Theme.of(context).scaffoldBackgroundColor,
                                  border: Border.all( color :Colors.grey.shade300)

                              ),

                              child: TextFormField(
                                controller: passwordcontroller,
                                decoration: const InputDecoration(
                                    border: InputBorder.none
                                ),
                              ),

                            ),
                            SizedBox(height: size*0.03,),
                            Row(
                              children: [
                                Checkbox(value: isselect, onChanged: (value){
                                  setState(() {
                                    isselect=value!;
                                  });

                                }),
                                const  Text("Remember me on this computer",maxLines: 1,overflow: TextOverflow.ellipsis,),



                              ],
                            ),
                            SizedBox(height: size*0.03,),
                            isloading?Container(
                              width: double.infinity,
                              padding:const EdgeInsets.all(15),
                              color: Colors.indigo,
                              alignment: Alignment.center,
                              child: const  CircularProgressIndicator(color: Colors.white,),

                            )
                                : CustomButton(ontap: () {
                              // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>DashBoard()));
                              if(namecontroller.text!=""&&passwordcontroller.text!=""){
                                setState(() {
                                  isloading=true;
                                });
                                print("input enter");
                                loginApiCall(namecontroller.text,passwordcontroller.text,context);

                              }else{
                                print("input error");
                                // code for display else
                              }
                            }, title: 'LOG IN',),

                            SizedBox(height: size*0.03,),
                            GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                                },
                                child: const  Center(child:  Text("Forgot Password?",style: TextStyle(color: Colors.red,),))),
                            SizedBox(height: size*0.03,),
                            Center(
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SigmUpScreen()));
                                },
                                child: RichText(
                                  text:  TextSpan(
                                    text: "Don't have an account yet?",
                                    style: TextStyle(fontWeight: FontWeight.w400,fontSize: width<1680||size<650?20:30),

                                    children:  <TextSpan>[

                                      TextSpan(text: '  Create Now!', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: width<1680||size<650?20:30),),
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

              ],


            ),
            // web
          ): SingleChildScrollView(
            child: Row(
              children: [
                Expanded(child: Container(
                  child: Image.asset("assets/images/login.png",fit: BoxFit.fill,),
                )),
                Expanded(child: Container(
                  padding:  EdgeInsets.all(size<800?size*0.05:size*0.1),
                alignment: Alignment.center,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidgets().loginheading(AppStrings().sign, ),
                     SizedBox(height: size*0.03,),
                    Container(
                      width: double.infinity,

                      padding:  EdgeInsets.all(size*0.03),

                    color: Colors.white,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                          Text("ASWS",style: TextStyle(color: Colors.green,fontSize:  width<1350||size<800?30:40,fontWeight:FontWeight.bold),),
                        SizedBox(height: size*0.03,),
                        Text("Welcome to ASWS",style: TextStyle(color: Colors.blue[900],fontSize: width<1350||size<800?30:40,fontWeight:FontWeight.w500)),
                        SizedBox(height: size*0.03,),
                      const   Text("Email"),
                        const  SizedBox(height: 5,),
                        Container(
                          padding:const  EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            border: Border.all( color :Colors.grey.shade300)

                          ),

                          child: TextFormField(
                            controller: namecontroller,
                            decoration: const InputDecoration(
                              border: InputBorder.none
                            ),
                          ),

                        ),
                        SizedBox(height: size*0.03,),
                        const   Text("Password"),
                        const  SizedBox(height: 5,),
                        Container(
                          padding:const  EdgeInsets.symmetric(horizontal: 30),
                          decoration: BoxDecoration(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              border: Border.all( color :Colors.grey.shade300)

                          ),

                          child: TextFormField(
                            controller: passwordcontroller,
                            decoration: const InputDecoration(
                                border: InputBorder.none
                            ),
                          ),

                        ),
                        SizedBox(height: size*0.03,),
                        Row(
                          children: [
                           Checkbox(value: isselect, onChanged: (value){
                             setState(() {
                               isselect=value!;
                             });

                           }),
                           const  Text("Remember me on this computer",maxLines: 1,overflow: TextOverflow.ellipsis,),



                          ],
                        ),
                        SizedBox(height: size*0.03,),
                        isloading?Container(
                             width: double.infinity,
                             padding:const EdgeInsets.all(15),
                               color: Colors.indigo,
                              alignment: Alignment.center,
                              child: const  CircularProgressIndicator(color: Colors.white,),

                          )
                          : CustomButton(ontap: () {
                           // Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>DashBoard()));
                          if(namecontroller.text!=""&&passwordcontroller.text!=""){
                            setState(() {
                              isloading=true;
                            });
                            print("input enter");
                            loginApiCall(namecontroller.text,passwordcontroller.text,context);

                          }else{
                            print("input error");
                            // code for display else
                          }
                        }, title: 'LOG IN',),

                        SizedBox(height: size*0.03,),
                        GestureDetector(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ForgotPasswordScreen()));
                          },
                            child: const  Center(child:  Text("Forgot Password?",style: TextStyle(color: Colors.red,),))),
                        SizedBox(height: size*0.03,),
                        Center(
                          child: GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SigmUpScreen()));
                            },
                            child: RichText(
                              text:  TextSpan(
                                text: "Don't have an account yet?",
                                style: TextStyle(fontWeight: FontWeight.w400,fontSize: width<1680||size<650?20:30),

                                children:  <TextSpan>[

                                   TextSpan(text: '  Create Now!', style: TextStyle(fontWeight: FontWeight.bold,color: Colors.deepPurple,fontSize: width<1680||size<650?20:30),),
                                ],
                              ),
                            ),
                          ),
                        )

                      ],
                    ) ,)
                  ],
                ),
                )),
              ],
            ),
          ),

    );
  }
  void loginApiCall(String email ,String password,ctx) async{

    var data={
      "userName": email,
      "userPassword":password

    };
   var body= json.encode(data);
    final url = Uri.parse(ApiEndPoint.baseurl+ApiEndPoint.authenticate);


    try{

      var response= await post(url,
          headers: {"Content-Type": "application/json"},
          body: body);

      var result=jsonDecode(response.body);
      setState(() {
        isloading=false;
      });

      if(response.statusCode==200){
        debugPrint("Sucessfully Hit the Api");
          box.put("token",result['jwtToken'].toString() );
        debugPrint(result.toString());
        debugPrint("token===${result['jwtToken']}");

         Navigator.of(ctx).pushReplacement(MaterialPageRoute(builder: (context)=>DashBoard()));


      }else{
        debugPrint("Something went wrong ");

      }

    }catch(error){
      debugPrint(error.toString());
    }


  }
}
