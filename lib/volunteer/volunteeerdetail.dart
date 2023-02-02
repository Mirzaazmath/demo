import 'package:flutter/material.dart';

import '../utils/appColors.dart';
class Volunteerdetails extends StatelessWidget {

  VoidCallback ontap;
  Volunteerdetails(this.ontap);

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
                child: Text("Volunteer > Volunteer Details",style: Theme.of(context).textTheme.headline1,)),
            const  SizedBox(height: 30,),
            Container(
              height: 400,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,

                                  colors: [
                                    Color(0xff049FFC),
                                    Color(0xff7B9DDC),
                                    Color(0xffADB0DD)
                                  ]
                              )
                          ),
                        ),
                        Expanded(child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const  SizedBox(
                                  height: 40,
                                ),
                                Text("Mohd Sohail",style: Theme.of(context).textTheme.headline1,),
                                const  SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,

                                        children: [
                                          Text("Teacher",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading: Icon(Icons.location_city,color: Colors.grey,),
                                            title: Text("Hyderabad ,Telengana",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Phone",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading: Icon(Icons.location_city,color: Colors.grey,),
                                              title: Text("+91 98776543321",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Email",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading: Icon(Icons.location_city,color: Colors.grey,),
                                            title:   Text("MohdSohail@gmail.com",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ))
                      ],

                    ),
                    Positioned(
                      left: 20,
                      top: 40,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: AppColors().whiteColor,
                        child:const  CircleAvatar(
                          radius: 45,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ) ,
            // Education
            const  SizedBox(height: 20,),
            Container(

              height: 300,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child:

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Education",style: Theme.of(context).textTheme.headline1,)),
                          IconButton(onPressed: (){}, icon:   Icon(Icons.add),),
                          IconButton(onPressed: (){}, icon:   Icon(Icons.edit),),

                        ],
                      ),
                      const  SizedBox(height: 15,),
                      ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading:FlutterLogo(size: 50,),
                          title: Text("Osmaina University,",style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bachelor of Computer Application",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                              SizedBox(height: 10,),
                              Text("May 2014 - Apr 2018",style: TextStyle(fontSize: 12),),
                            ],
                          )

                      )



                    ],

                  ),
                ),



              ),
            ) ,
            // Experience
            const  SizedBox(height: 20,),
            Container(

              height: 300,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child:

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: Text("Experience",style: Theme.of(context).textTheme.headline1,)),
                          IconButton(onPressed: (){}, icon:   Icon(Icons.add),),
                          IconButton(onPressed: (){}, icon:   Icon(Icons.edit),),

                        ],
                      ),
                      const  SizedBox(height: 15,),
                      ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading:FlutterLogo(size: 50,),
                          title: Text("Osmaina University,",style: TextStyle(fontWeight: FontWeight.bold),),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Bachelor of Computer Application",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
                              SizedBox(height: 10,),
                              Text("May 2014 - Apr 2018",style: TextStyle(fontSize: 12),),
                            ],
                          )

                      )



                    ],

                  ),
                ),



              ),
            ) ,
          ],
        ),
      ),
    );
  }
}
