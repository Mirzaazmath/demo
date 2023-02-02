import 'package:flutter/material.dart';

import '../../Widgets/linegraphclass.dart';
import '../../utils/textwidgets.dart';
class LineGraph extends StatelessWidget {
  const LineGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 450,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidgets().headingtext("Attendance", context),
                  GestureDetector(
                    onTap: (){

                      showdailog(context);

                    },
                    child: Container(
                      padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),

                        border: Border.all(color: Colors.indigo,)


                      ),
                      child:const  Text("Filter",style: TextStyle(fontSize: 17,color: Colors.indigo),),
                    ),
                  )
                ],
              ),

             const  SizedBox(height: 30,),
              Expanded(child:
              LineGaphClass())
            ],
          ),
        ),
      ),
    );
  }

  void showdailog(context) {
    String? center;
    String? gender;
    String? role;
    bool? zone =false;


    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        contentPadding: EdgeInsets.zero,

        content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return SizedBox(
                width: 700,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                         const  Expanded(child:Center(
                            child:  Text("Filters",style: TextStyle(fontSize: 25),),
                          )),
                        IconButton(onPressed: (){
                          Navigator.pop(context);

                        }, icon:const  Icon(Icons.close))
                        ],
                      ),
                    ),
                   const Divider(),
                    Padding(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                             Expanded(child:  Column(
                               mainAxisAlignment: MainAxisAlignment.start,
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 textwidget("Centers"),
                                 const  SizedBox(height: 10,),
                                 Row(
                                   children: [
                                     Radio(
                                         value: "Active", groupValue: center, onChanged: (value){
                                       setState(() {
                                         center=value;

                                       });}),
                                     const  Text("Active")
                                   ],
                                 ),

                                 Row(
                                   children: [
                                     Radio(
                                         value: "Inactive", groupValue: center, onChanged: (value){
                                       setState(() {
                                         center=value;

                                       });}),
                                     const  Text("Inactive")
                                   ],
                                 ),

                               ],
                             ),),
                            Expanded(child:   Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                textwidget("Gender"),
                                const  SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Radio(
                                        value: "Male", groupValue: gender, onChanged: (value){
                                      setState(() {
                                        gender=value;

                                      });}),
                                    const  Text("Male")
                                  ],
                                ),

                                Row(
                                  children: [
                                    Radio(
                                        value: "Female", groupValue: gender, onChanged: (value){
                                      setState(() {
                                        gender=value;

                                      });}),
                                    const  Text("Female")
                                  ],
                                ),

                              ],
                            ),),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    textwidget("Role"),
                                    const  SizedBox(height: 10,),
                                    Row(
                                      children: [
                                        Radio(
                                            value: "Student", groupValue: role, onChanged: (value){
                                          setState(() {
                                            role=value;

                                          });}),
                                        const  Text("Student")
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Radio(
                                            value: "Teacher", groupValue: role, onChanged: (value){
                                          setState(() {
                                            role=value;

                                          });}),
                                        const  Text("Teacher")
                                      ],
                                    ),

                                  ],
                                ),
                              )
                            ],
                          ),
                         const  Divider(),
                          textwidget("Zone"),
                          const SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("East Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("West Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("North Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("South Zone")
                                ],
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("East Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("West Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("North Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("South Zone")
                                ],
                              )

                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("East Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("West Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("North Zone")
                                ],
                              ),
                              Row(
                                children: [
                                  Checkbox(value:zone , onChanged: (value){
                                    setState(() {
                                      zone=value;

                                    });

                                  }),
                                  Text("South Zone")
                                ],
                              )

                            ],
                          ),
                        const   Divider(),
                        Padding(padding:const  EdgeInsets.all(10),
                        child:   Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                         const Text("Clear",style: TextStyle(decoration: TextDecoration.underline),),
                          Container(
                            padding:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                            decoration: BoxDecoration(
                              color: Colors.indigo,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            alignment: Alignment.center,
                            child: const Text("Apply",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          )
                        ],),)

                        ],
                      ),
                    )
                  ],
                )

              );
            }),
      ),
    );
  }

  Widget textwidget(String title){
    return Text(title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),);
  }
}
