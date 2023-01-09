import 'package:asws/pages/Students/studentdetails.dart';
import 'package:asws/pages/Students/studenttable.dart';
import 'package:asws/utils/appColors.dart';
import 'package:asws/utils/appStrings.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../Forms/newstudentForm.dart';
class Students extends StatefulWidget {
  const Students({Key? key}) : super(key: key);

  @override
  State<Students> createState() => _StudentsState();
}

class _StudentsState extends State<Students> {
  var box = Hive.box('testBox');


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
                Expanded(child: Text(AppStrings().student,style: Theme.of(context).textTheme.headline1,)),
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
                  flex: 1,
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
                  flex: 1,
                    child: Container())
,              Expanded(
                    flex: 2,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      decoration: BoxDecoration(
      color: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(30),

      ),
      child:  Text("Select Center ",style: TextStyle(color: AppColors().lightwhite),),
      ),
      Container(
        padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
      decoration: BoxDecoration(
   border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(30),

      ),
      child:  Text("Newest ",style: TextStyle(color: Theme.of(context).primaryColor),),
      ), GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>NewStudentForm()));
          },
        child: Container(
            padding:const  EdgeInsets.symmetric(horizontal: 30,vertical: 15),
        decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(30),

        ),
        child:  Text("New Students ",style: TextStyle(color: AppColors().lightwhite),),
        ),
      )
      ],

      ))
              ],
            ),
          const  SizedBox(height: 30,),
            StudentTable(seeDetails)

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
