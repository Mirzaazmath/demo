import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
class CenterList extends StatelessWidget {
  VoidCallback ontap;
  CenterList(this.ontap);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount: 4,
        ),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: ontap,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Theme.of(context).primaryColor,

                        ),
                      ),
                      title: Text("Macca Masjid Center",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 14),),
                      subtitle:Row(
                        children: [Icon(Icons.person,color: Colors.grey,size: 12,),Text("Shaik Akbar (Active Volunteer)",style: TextStyle(color: Colors.grey,fontSize: 10),overflow: TextOverflow.ellipsis  ,)
                        ],
                      )
                    ),
                    Divider(),
                    Row(children: [
                      Expanded(child: ListTile(
                        horizontalTitleGap: 0,
                          contentPadding: EdgeInsets.zero,
                        leading: Icon(Icons.engineering),
                        title:Text("3 Classes",style: TextStyle(color: Colors.grey,fontSize: 10),overflow: TextOverflow.ellipsis  ,)
                      )),
                      Expanded(child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.person),
                          title:Text("5 Teachers",style: TextStyle(color: Colors.grey,fontSize: 10),overflow: TextOverflow.ellipsis  ,)
                      ))
                    ],),
                    Row(children: [
                      Expanded(child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.school),
                          title:Text("50 Students",style: TextStyle(color: Colors.grey,fontSize: 10),overflow: TextOverflow.ellipsis  ,)
                      )),
                      Expanded(child: ListTile(
                          horizontalTitleGap: 0,
                          contentPadding: EdgeInsets.zero,
                          leading: Icon(Icons.timer),
                          title:Text("3 Hour/day",style: TextStyle(color: Colors.grey,fontSize: 10),overflow: TextOverflow.ellipsis  ,)
                      ))
                    ],),
                  const   SizedBox(height: 20,),
                    Text("View Center",style: TextStyle(color: AppColors().orange,fontWeight: FontWeight.bold),)
                  ],

                ),
              ),


            ),
          );
        }
    );
  }
}
