import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
import '../../utils/appStrings.dart';
class LeaderBoard extends StatelessWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(AppStrings().leaderboard,style: Theme.of(context).textTheme.headline1,)),
                IconButton(
                    onPressed: (){},
                    icon: const  Icon(Icons.notifications_outlined,size: 35,)),
                const SizedBox(width: 30,),
                IconButton(
                    onPressed: (){},
                    icon: const  Icon(Icons.settings_outlined,size: 35,)),
                const SizedBox(width: 30,),
                Column(
                  children:const  [
                    Text("Yahiya Ali",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                    Text("Admin"),

                  ],
                ),
                const SizedBox(width: 20,),
                Container(
                  height: 70,
                  width: 70,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.lightBlueAccent
                  ),
                )




              ],
            ),
            const  SizedBox(
              height: 30,
            ),
            Row(
              children: [


                Expanded(
                  flex: 2,
                  child: Container(

                    width: 200,
                    height: 50,
                    padding:const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: AppColors().whiteColor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: [
                        Padding(padding:const  EdgeInsets.only(right: 20),child:    Icon(Icons.search,color: Theme.of(context).primaryColor,),),
                        Expanded(
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: AppStrings().search,

                                border: InputBorder.none
                            ),
                          ),
                        ),
                      ],
                    ),

                  ),
                ),
                Expanded(
                    flex: 2,
                    child: Container())
                ,              Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(30),

                          ),
                          child:  Text("Select Center ",style: TextStyle(color: Theme.of(context).primaryColor),),
                        ),
                      ],

                    ))
              ],
            ),
          const   SizedBox(height: 30,),
            Text(AppStrings().globalleaderboard,style: Theme.of(context).textTheme.headline1,),
            const   SizedBox(height: 10,),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: ListView.builder(
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
              ),
            ),
            const SizedBox(height: 30,),
            Container(
              height: 510,
              child: ListView.builder(
                shrinkWrap:  true,
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                  itemBuilder: (context,index){
                return  Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  width: 400,
                  height: 300,
                  child:Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Padding(
                      padding: const EdgeInsets.all(25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:  [
                             Text('Macca Masjid Center',style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 20),),
                             Text("Top 5")
                           ],
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
                  ),
                );
              }

              ),
            )






          ],
        ),
      ),
    );
  }
}
