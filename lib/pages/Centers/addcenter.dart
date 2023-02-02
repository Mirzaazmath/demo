import 'package:flutter/material.dart';

import '../../utils/appColors.dart';

import '../Forms/newstudentForm.dart';
class AddCenter extends StatefulWidget {
  VoidCallback ontap;
  AddCenter(this.ontap);


  @override
  State<AddCenter> createState() => _AddCenterState();
}

class _AddCenterState extends State<AddCenter> {
  TextEditingController centername = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController masjidcommitmembername = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController waqboadno = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(child: GestureDetector(
                  onTap: widget.ontap,
                  child: Text("Center / Create Center", style: Theme
                      .of(context)
                      .textTheme
                      .headline1,),
                )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.notifications_outlined, size: 35,)),
                const SizedBox(width: 30,),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.settings_outlined, size: 35,)),
                const SizedBox(width: 30,),
                Column(
                  children: const [
                    Text("Yahiya Ali", style: TextStyle(
                        color: Colors.deepPurple, fontSize: 20),),
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
            const SizedBox(height: 30,),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 30),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Theme
                            .of(context)
                            .primaryColor,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(10),
                            topLeft: Radius.circular(10))
                    ),
                    alignment: Alignment.centerLeft,
                    child: Text("Student Details", style: TextStyle(
                        color: AppColors().whiteColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),),
                  ),
                  Container(
                    height: 760,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 20),
                    child: Row(
                      children: [

                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Column(
                                children: [
                                  feild("Center Name*", centername, ""),
                                  const SizedBox(height: 20,),
                                  feild("Email *", email, "Email"),
                                  const SizedBox(height: 20,),
                                  feild("Address *", address, "Address"),
                                  const SizedBox(height: 20,),
                                  feild("Address *", address, "Address"),
                                  const SizedBox(height: 20,),
                                ],
                              ),
                            )),
                        Expanded(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  feild("Masjid Committies member name *",
                                      masjidcommitmembername, ""),
                                  const SizedBox(height: 20,),
                                  feild("Phone  *", phone, "+91 9876543210"),
                                  const SizedBox(height: 20,),
                                  feild("Waqt board No", waqboadno,
                                      "Select State"),

                                ],

                              ),
                            ))
                      ],
                    ),
                  )
                ],

              ),
            ),
          const   SizedBox(height: 30,),
            titletext("Photo collections *"),
            const   SizedBox(height: 10,),
           const  Card(
              child: SizedBox(
                height: 400,
                width: double.infinity,
              ),
            )


          ],
        ),


      ),

    );
  }
}