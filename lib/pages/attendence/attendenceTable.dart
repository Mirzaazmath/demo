import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
class AttendenceTable extends StatefulWidget {
  VoidCallback ontap;
  AttendenceTable(this.ontap);


  @override
  State<AttendenceTable> createState() => _AttendenceTableState();
}

class _AttendenceTableState extends State<AttendenceTable> {
  @override
  Widget build(BuildContext context) {
    bool iselected=false;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    flex:1,child: Row(
                  children: [
                    Container(
                      height :10,
                      width: 10,

                      child: Checkbox(value: iselected, onChanged:(value){
                        setState(() {
                          iselected = value!;
                        });

                      }),
                    ),


                    const  SizedBox(width: 20,),
                    Text("User Name",style: TextStyle(color: AppColors().darkpurple,fontWeight: FontWeight.bold),),



                  ],
                )),
                Expanded(
                    flex:1,
                    child: Text("ID",style: TextStyle(color: AppColors().darkpurple,fontWeight: FontWeight.bold),)),
                Expanded(
                    flex:1,
                    child: Text("Punch in time and date",style: TextStyle(color: AppColors().darkpurple,fontWeight: FontWeight.bold),)),
                Expanded(
                    flex:1,
                    child: Text("Center",style: TextStyle(color: AppColors().darkpurple,fontWeight: FontWeight.bold),)),
                Expanded(
                    flex:1,
                    child: Text("Rules",style: TextStyle(color: AppColors().darkpurple,fontWeight: FontWeight.bold),)),
                Expanded(
                    flex:1,
                    child: Text("Remark",style: TextStyle(color: AppColors().darkpurple,fontWeight: FontWeight.bold),)),
                Expanded(
                    flex:1,
                    child: Center(child: Text("Action",style: TextStyle(color: AppColors().darkpurple,fontWeight: FontWeight.bold),))),

              ],
            ),
          ),
          Divider(),
          ListView.builder(

              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index){
                return  Container(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    onTap: widget.ontap,
                    child: Row(
                      children: [
                        Expanded(
                            flex:1,child: Row(
                          children: [
                            Container(
                              height :10,
                              width: 10,

                              child: Checkbox(value: iselected, onChanged:(value){
                                setState(() {
                                  iselected = value!;
                                });

                              }),
                            ),


                            const  SizedBox(width: 20,),
                            Text("Mohd Ghouse",style: TextStyle(color: AppColors().darkbluegrey,fontSize:15,fontWeight: FontWeight.bold))



                          ],
                        )),
                        Expanded(
                            flex:1,
                            child: Text("#12345678",style: TextStyle(color:Theme.of(context).primaryColor,fontWeight: FontWeight.bold),)),
                        const  Expanded(
                            flex:1,
                            child: Text("04:04.11 Dec 17,2022",style: TextStyle(color: Colors.grey,),)),
                        Expanded(
                            flex:1,
                            child: Text("Macca Masjid Center \/ Chairminar",style: TextStyle(color: AppColors().darkpurple,),)),
                        Expanded(
                            flex:1,
                            child: Text("Student",style: TextStyle(color: AppColors().darkpurple,),)),
                        Expanded(
                            flex:1,
                            child: Text("Present",style: TextStyle(color: Theme.of(context).primaryColor,),)),

                        const Expanded(
                            flex:1,
                            child: Icon(Icons.more_horiz,color: Colors.grey,))
                      ],
                    ),
                  ),
                );

              }),
          const  SizedBox(height: 30,),
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
          const  SizedBox(height: 30,),

        ],
      ),
    );
  }
}
