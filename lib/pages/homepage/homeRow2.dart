import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
import '../../utils/textwidgets.dart';
class HomeRow2 extends StatelessWidget {
  const HomeRow2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Container(
          margin:const  EdgeInsets.only(right: 10),
          height: 550,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          TextWidgets().headingtext("Teachers Leader Board", context),

                          Text("Top 5")
                        ],
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return Container(
                            margin:const EdgeInsets.symmetric(vertical: 10),
                            padding:const  EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                color: LeaderColor[index],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(

                              leading: Text("${index+1}",style: TextStyle(color: AppColors().whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),
                              title:Text("Ahmed Khan ",style: TextStyle(color: AppColors().whiteColor,fontWeight: FontWeight.bold,fontSize: 20),) ,
                              subtitle: Text("Syed Khaja [M1 T5] ",style: TextStyle(color: AppColors().whiteColor,),) ,
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ))),
        Expanded(child: Container(
            margin:const  EdgeInsets.only(left: 10),
          height: 550,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children:  [
                          TextWidgets().headingtext("Students Leader Board", context),

                          Text("Top 5")
                        ],
                      ),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return Container(
                            margin:const EdgeInsets.symmetric(vertical: 10),
                            padding:const  EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                                color: LeaderColor[index],
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: ListTile(

                              leading: Text("${index+1}",style: TextStyle(color: AppColors().whiteColor,fontWeight: FontWeight.bold,fontSize: 20),),
                              title:Text("Ahmed Khan ",style: TextStyle(color: AppColors().whiteColor,fontWeight: FontWeight.bold,fontSize: 20),) ,
                              subtitle: Text("Syed Khaja [M1 T5] ",style: TextStyle(color: AppColors().whiteColor,),) ,
                            ),
                          );
                        }),
                  ],
                ),
              ),
            ),))
      ],
    );
  }
}
