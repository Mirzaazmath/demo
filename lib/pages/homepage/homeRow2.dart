import 'package:flutter/material.dart';

import '../../utils/appColors.dart';
import '../../utils/textwidgets.dart';
class HomeRow2 extends StatefulWidget {
  const HomeRow2({Key? key}) : super(key: key);

  @override
  State<HomeRow2> createState() => _HomeRow2State();
}

class _HomeRow2State extends State<HomeRow2> {
  var  dropdownValue;
  List<String> list = ['Center', 'Two', 'Three', 'Four',"Five"];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dropdownValue =list.first ;
  }

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
                          DropdownButton<String>(
                            value: dropdownValue,
                            underline: Container(height: 2,color: Colors.transparent,),

                            elevation: 16,
                            style: const TextStyle(color: Colors.black),

                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),

                          // Text("Top 5")
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

                          DropdownButton<String>(
                            value: dropdownValue,
                            underline: Container(height: 2,color: Colors.transparent,),

                            elevation: 16,
                            style: const TextStyle(color: Colors.black),

                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
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
