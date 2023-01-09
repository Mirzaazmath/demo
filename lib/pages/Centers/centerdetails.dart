import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
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
            Container(
              height: 400,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child:Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(

                    children: [
                      Expanded(
                        flex: 1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 200,

                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.grey[200]
                              ),
                            ),
                            const SizedBox(height: 30,),
                            Row(


                              children: [
                                Expanded(
                                  child: Column(
                                    children: [
                                      const Text("Valunteers",style: TextStyle(color: Color(0xffC5BDEC)),),
                                      const SizedBox(height: 5,),
                                      Text("16",style:Theme.of(context).textTheme.headline1,)
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                    const   Text("Teachers",style: TextStyle(color: Color(0xffC5BDEC)),),
                                      const SizedBox(height: 5,),
                                      Text("10",style:Theme.of(context).textTheme.headline1,)
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    children: [
                                     const  Text("Students",style: TextStyle(color: Color(0xffC5BDEC)),),
                                      const SizedBox(height: 5,),
                                      Text("40",style:Theme.of(context).textTheme.headline1,)
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Mecca Masjid Center",style: Theme.of(context).textTheme.headline1,),
                                    IconButton(onPressed: (){}, icon:Icon(Icons.more_horiz,color: Colors.grey,))
                                  ],
                                ),
                               const  SizedBox(height: 10,),
                                Container(

                                  padding:const  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                                  decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(30),

                                  ),
                                  child:  Text("View photos ",style: TextStyle(color: AppColors().lightwhite),),
                                ),
                               const  SizedBox(height: 10,),
                                Row(
                                 children: [
                                   Expanded(
                                     child: ListTile(
                                contentPadding:EdgeInsets.zero,
                                       leading:   CircleAvatar(backgroundColor: Color(0xffC5BDEC),),
                                       title: Text("Waqt Board No.",style: TextStyle(color: Colors.grey),),
                                       subtitle: Text("vue3834",style: TextStyle(color: Colors.deepPurple.shade300,fontSize: 20,fontWeight: FontWeight.bold),),
                                     ),
                                   ),
                                   Expanded(
                                     child: ListTile(
                                       contentPadding:EdgeInsets.zero,
                                       leading:  CircleAvatar(backgroundColor: Color(0xffC5BDEC),),
                                       title: Text("Masjid Committee sadar",style: TextStyle(color: Colors.grey),),
                                       subtitle: Text("yousuf Khan",style: TextStyle(color: Colors.deepPurple.shade300,fontSize: 20,fontWeight: FontWeight.bold),),
                                     ),
                                   )
                                 ],
                                ),
                                const  SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        contentPadding:EdgeInsets.zero,
                                        leading:   CircleAvatar(backgroundColor: Color(0xffC5BDEC),),
                                        title: Text("Contact Number",style: TextStyle(color: Colors.grey),),
                                        subtitle: Text("+91 38377363446",style: TextStyle(color: Colors.deepPurple.shade300,fontSize: 20,fontWeight: FontWeight.bold),),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        contentPadding:EdgeInsets.zero,
                                        leading:  CircleAvatar(backgroundColor: Color(0xffC5BDEC),),
                                        title: Text("Email Address",style: TextStyle(color: Colors.grey),),
                                        subtitle: Text("Meccamasjid@gmail.com",style: TextStyle(color: Colors.deepPurple.shade300,fontSize: 20,fontWeight: FontWeight.bold),),
                                      ),
                                    )
                                  ],
                                ),
                                const  SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        contentPadding:EdgeInsets.zero,
                                        leading:   CircleAvatar(backgroundColor: Color(0xffC5BDEC),),
                                        title: Text("Address",style: TextStyle(color: Colors.grey),),
                                        subtitle: Text("20-57-164/38/, Opposite Charminar,Hospital,Shah Ali Banda, Hyderabad",style: TextStyle(color: Colors.deepPurple.shade300,fontSize: 20,fontWeight: FontWeight.bold),),
                                      ),
                                    ),

                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                )
              ),
            ) ,
            // Education
            const  SizedBox(height: 20,),
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
        Container(
          width: double.infinity,
          child: Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Volunteers",style: Theme.of(context).textTheme.headline1,),
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
