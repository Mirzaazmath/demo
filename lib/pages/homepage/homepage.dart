import 'package:asws/pages/homepage/linegraph.dart';
import 'package:asws/utils/appColors.dart';
import 'package:asws/utils/appStrings.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../../Widgets/custombutton.dart';
import '../../utils/textwidgets.dart';
import 'homeRow1.dart';
import 'homeRow2.dart';
import 'homeRow3.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final apst=AppStrings();
    final colo=AppColors();
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(apst.dashboard,style: Theme.of(context).textTheme.headline1,)),
                      CircleAvatar(backgroundColor: Theme.of(context).primaryColor,
                      child: Icon(Icons.add,color:colo.whiteColor ,),),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 30),
                          width: 200,
                          height: 50,
                          padding:const EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(
                            color: colo.whiteColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Row(
                            children: [
                           Padding(padding:const  EdgeInsets.only(right: 20),child:    Icon(Icons.search,color: Theme.of(context).primaryColor,),),
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: apst.search,

                                    border: InputBorder.none
                                  ),
                                ),
                              ),
                            ],
                          ),

                        ),
                      )
                    ],
                  ),
                 const  SizedBox(height: 30,),
                  HomeRow1(),
                  const  SizedBox(height: 30,),
                  LineGraph(),
                  const  SizedBox(height: 30,),
                  HomeRow2(),
                  const  SizedBox(height: 30,),
                  HomeRow3(),
                  const  SizedBox(height: 40,),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: double.infinity,
            color: Colors.white,
            child: Padding(
              padding:  const EdgeInsets.only(left: 30,right: 30,top: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      IconButton(
                        onPressed: (){},
                      icon: const  Icon(Icons.notifications_outlined,size: 35,)),
                      const SizedBox(width: 30,),
                      IconButton(
                          onPressed: (){},
                          icon: const  Icon(Icons.settings_outlined,size: 35,)),
                       Expanded(child:Row(
                         mainAxisAlignment: MainAxisAlignment.end,
                       children: [
                         Column(
                           children:const  [
                             Text("Yahiya Ali",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                             Text("Admin"),

                           ],
                         ),
                         const SizedBox(width: 20,),
                        CircleAvatar()
                       ],
                     )
                     )
                    ],),
                    const SizedBox(height: 50,),
                    TextWidgets().headingtext("Teachers", context),
                   const  SizedBox(height: 20,),
                  ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                      itemBuilder: (context,index){
                    return   Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration:const  BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child:
                      const  ListTile(
                        leading: CircleAvatar(),
                        title: Text("Shaik Ahmned",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 18),),
                        subtitle: Text("Alim"),

                      ),
                    );
                  }),
                    const  SizedBox(height: 20,),
                    Lightbutton(ontap: () {  }, title: 'View More',),
                    const  SizedBox(height: 40,),
                    TextWidgets().headingtext("Volunteers", context),
                    const  SizedBox(height: 20,),
                    ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return   Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration:const  BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey))
                            ),
                            child:
                            const  ListTile(
                              leading: CircleAvatar(),
                              title: Text("jaffer hussain",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 18),),
                              subtitle: Text("Mecca Masjid Center"),

                            ),
                          );
                        }),
                    const  SizedBox(height: 20,),
                    const  SizedBox(height: 20,),
                    Lightbutton(ontap: () {  }, title: 'View More',),



                  ],
                ),
              ),
            ),

          ),
        ),
      ],
    );
  }
}
