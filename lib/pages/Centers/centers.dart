import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
import '../../utils/appStrings.dart';
import 'centerdetails.dart';
import 'centerlist.dart';
class CentersPage extends StatefulWidget {
  const CentersPage({Key? key}) : super(key: key);

  @override
  State<CentersPage> createState() => _CentersPageState();
}

class _CentersPageState extends State<CentersPage> {
  bool detailShow=false;
  @override
  Widget build(BuildContext context) {
    return detailShow?CenterDetails(seeDetails): SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(AppStrings().center,style: Theme.of(context).textTheme.headline1,)),
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
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                          decoration: BoxDecoration(
                            border: Border.all(color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(30),

                          ),
                          child:  Text("Newest ",style: TextStyle(color: Theme.of(context).primaryColor),),
                        ), Container(
                          padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30),

                          ),
                          child:  Text("New Center ",style: TextStyle(color: AppColors().lightwhite),),
                        )
                      ],

                    ))
              ],
            ),
            const  SizedBox(height: 30,),
            CenterList(seeDetails),
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
    );
  }

  void seeDetails(){
    setState(() {
      detailShow=!detailShow;
    });
  }
}
