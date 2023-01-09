import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  VoidCallback ontap;
  String title;
  CustomButton({required this.ontap,required this.title});


  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        padding:const EdgeInsets.all(15),
        color: Colors.indigo,
        alignment: Alignment.center,
        child:  Text(title,style:const  TextStyle(color: Colors.white,),),

      ),
    );
  }
}
class Lightbutton extends StatelessWidget {
  VoidCallback ontap;
  String title;
  Lightbutton({required this.ontap,required this.title});

  @override
  Widget build(BuildContext context) {
    return   GestureDetector(
      onTap: ontap,
      child: Container(
        padding:const  EdgeInsets.symmetric(vertical: 13),
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.deepPurple.shade100
        ),
        alignment: Alignment.center,
        child: Text(title,style: TextStyle(color: Colors.deepPurple,fontWeight: FontWeight.bold),),

      ),
    );
  }
}

