

import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
import '../homepage/linegraph.dart';
class CenterDetails extends StatelessWidget {

  VoidCallback ontap;
  CenterDetails(this.ontap);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: ontap,
                child: Text("Center > Center Details",style: Theme.of(context).textTheme.headline1,)),
            const  SizedBox(height: 30,),
        Row(


          children: [
            Expanded(
              flex: 1,
              child:  Container(
                height: 250,

                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                        image: AssetImage("assets/images/masjid.jpeg"),fit: BoxFit.fill
                    )
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Padding(
                    padding: const EdgeInsets.only(left: 20,),
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Card(
                          elevation:10,

                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 120,
                            width: 200,
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                               const  CircleAvatar(radius: 30,
                                backgroundColor: Colors.blueAccent,
                                   child: Icon(Icons.person,size: 40,color: Colors.white,),),
                               const  SizedBox(width: 20,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                  Text("Students"),
                                  SizedBox(height: 10,),
                                  Text("10",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.indigo),)
                                ],)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation:10,

                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 120,
                            width: 200,
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                const  CircleAvatar(radius: 30,
                                  backgroundColor: Colors.redAccent,
                                child: Icon(Icons.person,size: 40,color: Colors.white,),),
                                const  SizedBox(width: 20,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:const  [
                                    Text("Teachers"),
                                    SizedBox(height: 10,),
                                    Text("04",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.indigo),)
                                  ],)
                              ],
                            ),
                          ),
                        ),
                        Card(
                          elevation:10,

                          child: Container(
                            padding: const EdgeInsets.all(20),
                            height: 120,
                            width: 200,
                            alignment: Alignment.center,
                            child: Row(
                              children: [
                                const  CircleAvatar(radius: 30,
                                  backgroundColor: Colors.black,
                                    child: Icon(Icons.person,size: 40,color: Colors.white,),),
                                const  SizedBox(width: 20,),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:const [
                                    Text("Volunteers"),
                                    SizedBox(height: 10,),
                                    Text("01",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.indigo),)
                                  ],)
                              ],
                            ),
                          ),
                        )
                      ],
                    )
                ))
          ],
        ),
            // Education
            const  SizedBox(height: 20,),
            texthead("Center Information"),
            const  SizedBox(height: 20,),

            Card(
              child: Container(
                padding:const  EdgeInsets.all(30),
                child:  Column(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Head Teacher",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading:CircleAvatar(
                                    backgroundColor: AppColors().orange,
                                    child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                  ),
                                  title: Text("Mohd Hussain Uddin",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Zone Coordinator",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading:CircleAvatar(
                                    backgroundColor: AppColors().orange,
                                    child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                  ),
                                  title: Text("Syed Taha Ahmed",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Waqf Board No.",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading:CircleAvatar(
                                  backgroundColor: AppColors().orange,
                                  child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                ),
                                title:   Text("18t423r44",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                   const  SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Head Teacher No.",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading:CircleAvatar(
                                    backgroundColor: AppColors().orange,
                                    child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                  ),
                                  title: Text("+91 987665543321",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Zone Coordinator No.",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading:CircleAvatar(
                                    backgroundColor: AppColors().orange,
                                    child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                  ),
                                  title: Text("+91 987665543321",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Masjid Head Name",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading:CircleAvatar(
                                  backgroundColor: AppColors().orange,
                                  child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                ),
                                title:   Text("Mohd Saleh",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const  SizedBox(height: 20,),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text(" Masjid Head No.",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading:CircleAvatar(
                                    backgroundColor: AppColors().orange,
                                    child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                  ),
                                  title: Text("+91 987665543321",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Email Address",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                  contentPadding: EdgeInsets.zero,
                                  leading:CircleAvatar(
                                    backgroundColor: AppColors().orange,
                                    child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                  ),
                                  title: Text("Masjid@gmail.com",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const   Text("Address",style: TextStyle(color: Colors.grey,fontSize: 14)),
                              const SizedBox(height: 10,),
                              ListTile(
                                contentPadding: EdgeInsets.zero,
                                leading:CircleAvatar(
                                  backgroundColor: AppColors().orange,
                                  child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                ),
                                title:   Text("Banjara Hills, Hyderabad, Telangana, INDIA.",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const  SizedBox(height: 50,),

                  ],
                )

              ),
            ),
            const  SizedBox(height: 20,),
            texthead("Center Attendance Performance "),
            const  SizedBox(height: 20,),
            LineGraph(),
            const  SizedBox(height: 20,),
            texthead("Student Performance based on syllabus "),
            const  SizedBox(height: 20,),
            Card(
              child:
              Container(
                padding:const  EdgeInsets.all(30),
                child: Column(

                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                crossAxisAlignment: CrossAxisAlignment.start,


                          children: const [
                            Text("Statistics"),
                SizedBox(height: 10,),
                Text("Top Performance",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),

                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,


                          children: [
                            Text("Center Overall Performance"),
                            SizedBox(height: 10,),
                            Text("62%",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20),),

                          ],
                        ), Container(
                          padding:const  EdgeInsets.symmetric(vertical: 5,horizontal: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),

                              border: Border.all(color: Colors.indigo,)


                          ),
                          child:const  Text("Filter",style: TextStyle(fontSize: 17,color: Colors.indigo),),
                        ),
                      ],
                    ),
                   const  SizedBox(height: 20,),
                  const   Divider(),
                    progress(context,"93%",0.93),
                    progress(context,"87%",0.87),
                    progress(context,"73%",0.73),
                    progress(context,"68%",0.68),
                    progress(context,"65%",0.65),
                    progress(context,"60%",0.60),
                    progress(context,"57%",0.57),
                    progress(context,"513%",0.51),
                    progress(context,"45%",0.45),
                    progress(context,"40%",0.40),



                  ],
                ),
              ),
            ),


            const  SizedBox(height: 20,),
            texthead("Performance based on syllabus"),
            const  SizedBox(height: 20,),
        SizedBox(
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        padding:const  EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child:  Text("Volunteers ",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin:const  EdgeInsets.only(left: 30),
                        padding:const  EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child:  Text("Teachers ",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                      ),
                      Container(
                        margin:const  EdgeInsets.only(left: 30),
                        padding:const  EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.transparent),
                          borderRadius: BorderRadius.circular(30),

                        ),
                        child:  Text("Students ",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),),
                      ),

                    ],
                  ),
                  const  SizedBox(height: 20,),
                  ListView.builder(
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context,index){
                        return Row(
                          children: [
                            Expanded(
                                flex:2,
                                child: ListTile(
                                  leading:const  CircleAvatar(backgroundColor: Color(0xffC5BDEC),),
                                  title: Text("Mirza Azmathullah baig ",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),

                                )),
                            Expanded(
                                flex:1,child: Text("ID123456789",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),)),
                            Expanded(
                                flex:2,
                                child: ListTile(
                                  leading: CircleAvatar(backgroundColor: AppColors().orange,),
                                  title: const Text("Center",style: TextStyle(color: Colors.grey,fontSize: 12),),
                                  subtitle: Text("Macca Masjid ",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 14),),


                                )),
                            Expanded(
                                flex:1,
                                child: Text("22/02/2023",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),)),
                            Expanded(
                                flex:1,
                                child: Icon(Icons.more_horiz,color: Colors.grey,)),
                          ],
                        );

                      }),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Showing 1-5 from 100 data",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 15),),
                        Row(children:const  [
                          Icon(Icons.arrow_left,size: 30,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              child: Text("1"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              child: Text("2"),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              child: Text("3"),
                            ),
                          ),
                          Icon(Icons.arrow_right,size: 30,),
                        ],)

                      ],),
                  ),

                ],

              ),
            ),
          ),
        ),
            // Experience

          ],
        ),
      ),
    );
  }
}
Widget texthead(String title){
  return Text(title,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.indigo,fontSize: 30),);
}
Widget progress(context,String percent,double value){
  return Padding(padding: EdgeInsets.symmetric(vertical: 15),child:   Row(
    children: [
      Text("Shoail Ahmed"),
      SizedBox(width: 20,),
      Expanded(child: ClipRRect(
        borderRadius: BorderRadius.circular(20),

        child: LinearProgressIndicator(
          minHeight: 15,
          value: value,
          color: Colors.indigo,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,

        ),
      )),
      SizedBox(width: 20,),

      Text(percent)
    ],
  ),);
}
