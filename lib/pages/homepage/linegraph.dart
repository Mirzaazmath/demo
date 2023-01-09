import 'package:flutter/material.dart';

import '../../Widgets/linegraphclass.dart';
import '../../utils/textwidgets.dart';
class LineGraph extends StatelessWidget {
  const LineGraph({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidgets().headingtext("Attendance", context),

             const  SizedBox(height: 30,),
              Expanded(child: LineGaphClass())
            ],
          ),
        ),
      ),
    );
  }
}
