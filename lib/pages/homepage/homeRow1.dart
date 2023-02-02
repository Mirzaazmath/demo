import 'package:asws/utils/appColors.dart';
import 'package:flutter/material.dart';

import '../../providers/page_provider.dart';
import 'package:provider/provider.dart';
class HomeRow1 extends StatelessWidget {
  const HomeRow1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var page=context.watch<PageProvider>().page;
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: Container(
        padding:const EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: AppColors().whiteColor,
          
        ),
        child: Row(
          children: [
            Expanded(child:GestureDetector(
              onTap: (){
                context.read<PageProvider>().updatepage(2);
              },
              child: Row(
              children: [
              CircleAvatar(
                radius:36,
              backgroundColor: Theme.of(context).primaryColor,
               child: Icon(Icons.person_outline,color:AppColors().whiteColor,size: 50,),
      ),
           const  SizedBox(width: 10,),
              Column(
                children: [
                  Text("Student",style: TextStyle(color: Colors.grey,fontSize: 18),),
                  const  SizedBox(height: 5,),
                  Text("932",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 30),),        ])
                  ],
                  ),
            ),),
            Expanded(child:GestureDetector(
              onTap: (){
                context.read<PageProvider>().updatepage(3);
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius:36,
                     backgroundColor: AppColors().orange,
                    child: Icon(Icons.person_outline,color:AppColors().whiteColor,size: 50,),
                  ),
                  const  SizedBox(width: 10,),
                  Column(
                      children: [
                        Text("Teacher",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        const  SizedBox(height: 5,),
                        Text("765",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 30),),        ])
                ],
              ),
            ),),
            Expanded(child:GestureDetector(
              onTap: (){
                context.read<PageProvider>().updatepage(1);
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius:36,
                    backgroundColor: AppColors().yellow,
                    child: Icon(Icons.location_city_outlined,color:AppColors().whiteColor,size: 50,),
                  ),
                  const  SizedBox(width: 10,),
                  Column(
                      children: [
                        Text("Center",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        const  SizedBox(height: 5,),
                        Text("40",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 30),),        ])
                ],
              ),
            ),),
            Expanded(child:GestureDetector(
              onTap: (){
                context.read<PageProvider>().updatepage(4);
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius:36,
                    backgroundColor: AppColors().darkpurple,
                    child: Icon(Icons.person_outline,color:AppColors().whiteColor,size: 50,),
                  ),
                  const  SizedBox(width: 10,),
                  Column(
                      children: [
                        Text("Volunteers",style: TextStyle(color: Colors.grey,fontSize: 18),),
                        const  SizedBox(height: 5,),
                        Text("246",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 30),),        ])
                ],
              ),
            ),),

          ],
        ),
      ),
    );
  }
}
