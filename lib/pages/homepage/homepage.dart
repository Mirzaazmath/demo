import 'package:asws/pages/homepage/linegraph.dart';
import 'package:asws/providers/page_provider.dart';
import 'package:asws/utils/appColors.dart';
import 'package:asws/utils/appStrings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../Widgets/custombutton.dart';
import '../../utils/textwidgets.dart';
import 'homeRow1.dart';
import 'homeRow2.dart';
import 'homeRow3.dart';
class HomePage extends StatefulWidget {


  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var  dropdownValue;
   List<String> list = ['Create', 'Student', 'Teacher', 'Zone',"Volunteer"];
   @override
  void initState() {
    // TODO: implement initState
    super.initState();
     dropdownValue =list.first ;
  }

  var item=0;
  @override
  Widget build(BuildContext context) {
    final apst=AppStrings();
    final colo=AppColors();
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Text(apst.dashboard,style: Theme.of(context).textTheme.headline1,)),
              Container(
                padding:const  EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(30),

                ),
                child: Theme(
                  data: Theme.of(context).copyWith(
                    canvasColor: Colors.indigo,
                  ),
                  child :DropdownButton<String>(
                  value: dropdownValue,
                  underline: Container(height: 2,color: Colors.transparent,),

                  elevation: 16,
                  style: const TextStyle(color: Colors.white),

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
                ),
              ),
                    ],
                  ),
                 const  SizedBox(height: 30,),
                  HomeRow1(),
                  const  SizedBox(height: 30,),
                  LineGraph(),
                  const  SizedBox(height: 30,),
                  HomeRow2(),
                  const  SizedBox(height: 30,),
                  HomeRow3(),
                  const  SizedBox(height: 40,),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: double.infinity,
            color: Colors.white,
            child: Padding(
              padding:  const EdgeInsets.only(left: 30,right: 30,top: 30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                  PopupMenuButton(
                    child:  Icon(Icons.notifications_outlined,size: 35,),
    initialValue: "",
    // Callback that sets the selected popup menu item.
    onSelected: ( item) {
    setState(() {

    });
    },
    itemBuilder: (BuildContext context) => <PopupMenuEntry>[

     PopupMenuItem(
    value: "0",
    child: Container(

      child: Column(
        children:const  [
          Center(child: Text("Notification Center"),),
          ListTile(
            title: Text("New User"),
            subtitle: Text("Imtroducing the  Amjad siddiqui as the student instructor"),
            leading: CircleAvatar(
              child: Text("A"),

            ),
          )


        ],
      ),
    )
    ),
    ],
    ),



                       Expanded(child:     PopupMenuButton(

                         child:
                         Row(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Column(
                               children:const  [
                                 Text("Yahiya Ali",style: TextStyle(color: Colors.deepPurple,fontSize: 20),),
                                 Text("Admin"),

                               ],
                             ),
                             const SizedBox(width: 20,),
                             CircleAvatar()
                           ],
                         ),
                         initialValue: "",
                         // Callback that sets the selected popup menu item.
                         onSelected: ( item) {
                           setState(() {
                             //do some code

                           });
                         },
                         itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                           const PopupMenuItem(
                             value: "View",
                             child: Text('View Profile'),
                           ),
                           const PopupMenuItem(
                             value: "Setting",
                             child: Text('Setting'),
                           ),
                           const PopupMenuItem(
                             value: "Logout",
                             child: Text('Logout'),
                           ),
                         ],
                       ),


                     )
                    ],),
                    const SizedBox(height: 50,),
                    TextWidgets().headingtext("Recently Joined Teachers", context),
                   const  SizedBox(height: 20,),
                  ListView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                      itemBuilder: (context,index){
                    return   Container(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      decoration:const  BoxDecoration(
                          border: Border(bottom: BorderSide(color: Colors.grey))
                      ),
                      child:
                      const  ListTile(
                        leading: CircleAvatar(),
                        title: Text("Shaik Ahmned",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 18),),
                        subtitle: Text("Mecca Masjid Center"),

                      ),
                    );
                  }),
                    const  SizedBox(height: 20,),
                    Lightbutton(ontap: () {
                     context.read<PageProvider>().updatepage(3);


                    }, title: 'View More',),
                    const  SizedBox(height: 40,),
                    TextWidgets().headingtext(" Recently Joined Volunteers", context),
                    const  SizedBox(height: 20,),
                    ListView.builder(
                        itemCount: 4,
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return   Container(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            decoration:const  BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey))
                            ),
                            child:
                            const  ListTile(
                              leading: CircleAvatar(),
                              title: Text("jaffer hussain",style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold,fontSize: 18),),
                              subtitle: Text("Mecca Masjid Center"),

                            ),
                          );
                        }),
                    const  SizedBox(height: 20,),
                    const  SizedBox(height: 20,),
                    Lightbutton(ontap: () {
                      context.read<PageProvider>().updatepage(4);


                    }, title: 'View More',),



                  ],
                ),
              ),
            ),

          ),
        ),
      ],
    );
  }

  List<Widget>options=[ Row(children: [
    Icon(Icons.add,color: Colors.white,),
    SizedBox(width: 12,),
    Text("Create",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)
  ],),
    Column(
      children:  [
        GestureDetector(
          onTap: (){

          },
          child: Padding(padding: EdgeInsets.all(10),
              child: Text("Select",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
        Padding(padding: EdgeInsets.all(10),
            child: Text("Student",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
        Padding(padding: EdgeInsets.all(10),
            child: Text("Teacher",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
        Padding(padding: EdgeInsets.all(10),
            child: Text("Zone",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
        Padding(padding: EdgeInsets.all(10),
            child: Text("Volunteer",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),

      ],
    )
  ];
}
