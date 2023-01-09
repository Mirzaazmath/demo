import 'package:asws/utils/appColors.dart';
import 'package:flutter/material.dart';
class HomeRow3 extends StatelessWidget {
  const HomeRow3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Recently Join Students",style: Theme.of(context).textTheme.headline1,),
             const  SizedBox(height: 20,),
              ListView.builder(
                itemCount: 5,
                  shrinkWrap: true,
                  itemBuilder: (context,index){
                return Row(
                  children: [
                    Expanded(
                        flex:2,
                        child: ListTile(
                      leading:const  CircleAvatar(backgroundColor: Color(0xffC5BDEC),),
                      title: Text("Mirza Azmathullah baig ",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 16),),

                    )),
                    Expanded(
                        flex:1,child: Text("ID123456789",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),)),
                    Expanded(
                        flex:2,
                        child: ListTile(
                      leading: CircleAvatar(backgroundColor: AppColors().orange,),
                      title: const Text("Center",style: TextStyle(color: Colors.grey,fontSize: 12),),
                      subtitle: Text("Macca Masjid ",style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 14),),


                    )),
                    Expanded(
                        flex:1,
                        child: Text("22/02/2023",style: TextStyle(color: Theme.of(context).primaryColor,fontWeight: FontWeight.bold),)),
                    Expanded(
                      flex:1,
                        child: Icon(Icons.more_horiz,color: Colors.grey,)),
                  ],
                );

              }),
              const  SizedBox(height: 20,),
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

              const  SizedBox(height: 20,),
            ],

          ),
        ),
      ),
    );
  }
}
