import 'package:asws/utils/appColors.dart';
import 'package:flutter/material.dart';
class TeacherList extends StatefulWidget {
 VoidCallback ontap;
 TeacherList(this.ontap);

  @override
  State<TeacherList> createState() => _TeacherListState();
}

class _TeacherListState extends State<TeacherList> {

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
            onTap: widget.ontap,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                      Icon(Icons.more_horiz,color: Colors.grey,)
                    ],),

                    CircleAvatar(radius: 50,

                    ),
                    const  SizedBox(height: 10,),

                    Text("Mohd Sohail",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),
                    const SizedBox(height: 10,),
                  const  Text("Mathematics",style: TextStyle(fontSize: 12,color: Colors.grey),),
                    const SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Container(
                          height:30,
                          width:30,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.call_outlined,size: 15,color: AppColors().whiteColor),
                        ),
                        const SizedBox(width: 20,),
                        Container(
                          height:30,
                          width:30,
                          decoration: BoxDecoration(
                              color: Theme.of(context).primaryColor,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Icon(Icons.mail_outline,size: 15,color: AppColors().whiteColor,),
                        )
                      ],
                    ),

                  ],

                ),
              ),


            ),
          );
        }
    );
  }
}
