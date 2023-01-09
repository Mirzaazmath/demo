
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import '../utils/appColors.dart';
class LineGaphClass extends StatefulWidget {
  const LineGaphClass({Key? key}) : super(key: key);

  @override
  State<LineGaphClass> createState() => _LineGaphClassState();
}

class _LineGaphClassState extends State<LineGaphClass> {
  late List<Saledata>_chartdata;
  late List<Saledata>_chartdata2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _chartdata=getchartdata();
    _chartdata2=getchartdata1();
  }

  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
        series: <ChartSeries>[
          SplineSeries<Saledata,double>(
            width: 5,
            color: AppColors().orange,
            dataSource: _chartdata,
            xValueMapper: (Saledata data,_)=>data.sales,
            yValueMapper: (Saledata data,_)=>data.year,),
          SplineSeries<Saledata,double>(
            width: 5,
            color: AppColors().yellow,
            dataSource: _chartdata2,
            xValueMapper: (Saledata data,_)=>data.sales,
            yValueMapper: (Saledata data,_)=>data.year,)

        ]
    );
  }
  List<Saledata>getchartdata(){
    List<Saledata>chartdata=[
      Saledata(1,20),
      Saledata(2,60),
      Saledata(3,50),
      Saledata(4,30),
      Saledata(5,80),
      Saledata(6,10),
      Saledata(7,90),



    ];
    return chartdata;
  }
}
List<Saledata>getchartdata1(){
  List<Saledata>chartdata=[
    Saledata(1,30),
    Saledata(2,50),
    Saledata(3,80),
    Saledata(4,10),
    Saledata(5,70),
    Saledata(6,40),
    Saledata(7,60),



  ];
  return chartdata;
}

class Saledata{
  final  double year;
  final double sales;
  Saledata(this.sales,this.year);

}
