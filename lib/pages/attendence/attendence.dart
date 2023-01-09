import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
import '../../utils/appStrings.dart';
import '../Students/studentdetails.dart';
import '../Students/studenttable.dart';
import 'attendenceTable.dart';
class AttendencePage extends StatefulWidget {
  const AttendencePage({Key? key}) : super(key: key);

  @override
  State<AttendencePage> createState() => _AttendencePageState();
}

class _AttendencePageState extends State<AttendencePage> {
  bool detailShow=false;
  @override
  Widget build(BuildContext context) {
    return detailShow?StudentDetails(seeDetails): SingleChildScrollView(
      child: Padding(
        padding:const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: Text(AppStrings().attendence,style: Theme.of(context).textTheme.headline1,)),
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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [


                Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child:  Text("Newest ",style: TextStyle(color: Theme.of(context).primaryColor),),
                ),
                Container(
                  padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(30),

                  ),
                  child:  Text("Export CSV File ",style: TextStyle(color: AppColors().lightwhite),),
                ),

              ],
            ),
            const  SizedBox(height: 30,),
            AttendenceTable(seeDetails)

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
