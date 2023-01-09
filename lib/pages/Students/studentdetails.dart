import 'package:flutter/material.dart';
import 'package:asws/utils/appColors.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
class StudentDetails extends StatelessWidget {
  VoidCallback ontap;
  StudentDetails(this.ontap);


  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Present', 75,Colors.lightGreenAccent),
      ChartData('Leave', 15,Colors.yellow),
      ChartData('Absent', 15,Colors.red),



    ];
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
                onTap: ontap,
                child: Text("Student > Student Details",style: Theme.of(context).textTheme.headline1,)),
            const  SizedBox(height: 30,),
            Container(
              height: 1250,
              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: Stack(
                  children: [
                    Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              height: 100,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                 color: Theme.of(context).primaryColor,
                                borderRadius:const  BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))
                              ),
                            ),
                            Positioned(
                              bottom: -8,
                              right: 230,
                              child: Container(

                                height: 50,
                                width: 160,
                                decoration: BoxDecoration(
                                    color: AppColors().orange,
                                  borderRadius: BorderRadius.circular(10)

                                ),

                              ),
                            ),
                            Positioned(
                              bottom: -8,
                              right: 50,
                              child: Container(
                                height: 90,
                               width: 190,
                                decoration: BoxDecoration(
                                    color: AppColors().yellow,
                                    borderRadius: BorderRadius.circular(10)

                                ),

                              ),
                            )
                          ],
                        ),
                        Expanded(child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20,),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz,color: Colors.grey,))
                                  ],

                                ),
                                const  SizedBox(
                                  height: 40,
                                ),
                                Text("Mohd Ghouse",style: Theme.of(context).textTheme.headline1,),
                                const  SizedBox(
                                  height: 10,
                                ),

                              const    Text("Student Information",style: TextStyle(color: Colors.grey,fontSize: 19,decoration: TextDecoration.underline)),
                                const  SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Parents : Single",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("Mohd Hussain Uddin",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Center",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("Jahannuma,Hyderabad",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Phone",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading:CircleAvatar(
                                              backgroundColor: AppColors().orange,
                                              child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                            ),
                                            title:   Text("+91 89438343463",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const  SizedBox(height: 40,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Date of birth",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("30/05/2005",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("School Name",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("Crown High School",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Address",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading:CircleAvatar(
                                              backgroundColor: AppColors().orange,
                                              child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                            ),
                                            title:   Text("Shah Ali Banda,Hyderabad",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                               const  SizedBox(height: 40,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Zip Code",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("500056",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),


                                  ],
                                ),
                                const  SizedBox(
                                  height: 40,
                                ),
                                const    Text("Sibling Information",style: TextStyle(color: Colors.grey,fontSize: 19,decoration: TextDecoration.underline)),
                                const  SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Relation",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("Sister",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Name",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("Fouzia Fatima",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Age",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading:CircleAvatar(
                                              backgroundColor: AppColors().orange,
                                              child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                            ),
                                            title:   Text("12",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const  SizedBox(height: 40,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Standard",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("Sixth",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("ID",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("63t7626123t3123612",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(

                                      ),
                                    ),
                                  ],
                                ),
                                // parent information
                                const  SizedBox(height: 40,),
                                const    Text("Parents Information",style: TextStyle(color: Colors.grey,fontSize: 19,decoration: TextDecoration.underline)),
                                const  SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Name",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("Mohd Jabbar Uddin",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Email",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("jabbar@gmail.com",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Phone",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading:CircleAvatar(
                                              backgroundColor: AppColors().orange,
                                              child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                            ),
                                            title:   Text("+91 89438343463",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const  SizedBox(height: 40,),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Qualification",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("B.com(General)",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Occupation",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                              contentPadding: EdgeInsets.zero,
                                              leading:CircleAvatar(
                                                backgroundColor: AppColors().orange,
                                                child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                              ),
                                              title: Text("BussinessMan",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),)
                                          )
                                        ],
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const   Text("Ralation",style: TextStyle(color: Colors.grey,fontSize: 14)),
                                          const SizedBox(height: 10,),
                                          ListTile(
                                            contentPadding: EdgeInsets.zero,
                                            leading:CircleAvatar(
                                              backgroundColor: AppColors().orange,
                                              child:  Icon(Icons.location_city,color:AppColors().whiteColor,),
                                            ),
                                            title:   Text("Father",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),


                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),



                              ],
                            ),
                          ),
                        ))
                      ],

                    ),
                    Positioned(
                      left: 20,
                      top: 40,
                      child: CircleAvatar(
                        radius: 70,
                        backgroundColor: AppColors().whiteColor,
                        child: CircleAvatar(
                          radius: 65,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ) ,
            // Education
            const  SizedBox(height: 20,),
            Row(
              children: [
                Expanded(
                    child: Container(

                       margin:const  EdgeInsets.only(right: 20),
                      child: Card(
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                Text("Current Attendance Performance",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),),
                                SfCircularChart(
                                  legend: Legend(
                                    isVisible: true
                                  ),
                                    series: <CircularSeries>[
                                      // Render pie chart
                                      PieSeries<ChartData, String>(
                                          dataSource: chartData,
                                          pointColorMapper:(ChartData data,  _) => data.color,
                                          xValueMapper: (ChartData data, _) => data.x,
                                          yValueMapper: (ChartData data, _) => data.y
                                      )
                                    ]
                                ),
                              ],
                            ),
                          ) ,

                        ),

                ),)),
                Expanded(
                    child: Container(
                      width: double.infinity,
                      margin:const  EdgeInsets.only(left: 20),
                      child: Card(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text("Leader board position",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                Text("Postion"),
                                Text("User"),
                                Text("week")

                              ],),
                            ),
                            Divider(),
                            ListView.builder(
                              shrinkWrap: true,
                              itemCount: 5,
                                itemBuilder: (context,index){
                              return  Padding(
                              padding: const EdgeInsets.all(20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${index+1}"),
                                  Text("Mohd Ghouse"),
                                  Text("$index week")

                                ],),
                            );}),



                          ],
                        ),

                      ),))

              ],
            ),
            const  SizedBox(height: 20,),
            Container(


              width: double.infinity,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child:

                Padding(
                  padding: const EdgeInsets.all(50),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Average Subject Score",style: Theme.of(context).textTheme.headline1,),
                      const  SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          progresbar(0.33,"33%",const Color(0xffF35F00),"Noorani Qaida"),
                          progresbar(0.65,"65%", Colors.blue,"Al-Hadeeth"),
                          progresbar(0.41,"41%",Colors.purple,"Azkar e namaz"),
                          progresbar(0.55,"55%",Colors.black," Tafseer al-Quran"),

                        ],
                      ),
                      const SizedBox(height: 70,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          progresbar(0.93,"93%",Colors.green,"Life of Prophet"),
                          progresbar(0.51,"51%", Colors.red,"Dua"),
                          progresbar(0.73,"73%",Colors.brown,"Al-Aqeeda"),
                          progresbar(0.27,"27%",Colors.teal,"Islamic History"),

                        ],
                      ),
                      const  SizedBox(height: 40,),

                    ],

                  ),
                ),



              ),
            ) ,
            // Experience

          ],
        ),
      ),
    );
  }
}
Widget progresbar(double value,String percent,Color progesscolor,String title){
  return Column(
    children: [
      Stack(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: CircularProgressIndicator(
              value: value,
              strokeWidth: 30,
              backgroundColor:const  Color(0xffF6EDFF),
              color: progesscolor,

            ),
          ),
          Positioned(
              left: 35,
              top: 40,

              child:  Text(percent))
        ],
      ),
      const  SizedBox(height: 30,),
      Text(title,style: TextStyle(color: progesscolor,fontSize: 20,fontWeight: FontWeight.bold),)
    ],
  );
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}

