import 'package:flutter/material.dart';

import '../utils/appColors.dart';
class VolunteerList extends StatefulWidget {
  VoidCallback ontap;
  VolunteerList(this.ontap);



  @override
  State<VolunteerList> createState() => _VolunteerListState();
}

class _VolunteerListState extends State<VolunteerList> {
  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;
    return GridView.builder(
        shrinkWrap: true,
        gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          crossAxisCount:width<1480?3: 4,
        ),
        itemCount: 12,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: widget.ontap,
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Row(

                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Icon(Icons.more_horiz,color: Colors.grey,)
                      ],),

                    AspectRatio(
                      aspectRatio: 2,
                      child: CircleAvatar(radius: 50,

                      ),
                    ),
                    const  SizedBox(height: 10,),

                    FittedBox(child: Text("Mohd Sohail",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)),
                    const SizedBox(height: 10,),
                    const  Text("Alim",style: TextStyle(fontSize: 12,color: Colors.grey),),
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
