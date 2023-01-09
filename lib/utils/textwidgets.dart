import 'dart:js';

import 'package:flutter/material.dart';
class TextWidgets{
  Widget loginheading(String text){
    return Text(text,style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 40),);
  }
  Widget headingtext(String text,context){
    return Text(text,style: Theme.of(context).textTheme.headline1?.copyWith(fontSize: 25,fontWeight: FontWeight.bold),);
  }
}
