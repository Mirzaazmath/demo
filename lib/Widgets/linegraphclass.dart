
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
      tooltipBehavior: TooltipBehavior(enable: true),
      legend: Legend(
          overflowMode: LegendItemOverflowMode.wrap,
          shouldAlwaysShowScrollbar: false,
          position: LegendPosition.bottom,
          isVisible: true),
      primaryXAxis: CategoryAxis(
        majorGridLines: const MajorGridLines(width: 0),
      ),
      primaryYAxis: NumericAxis(
          axisLine: const AxisLine(
              color: Colors.transparent, width: 0)),
      series: <ChartSeries>[
        ColumnSeries<ChartData, int>(
          color: Colors.green,
          name: "Present",

            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y
        ),
        ColumnSeries<ChartData, int>(
          name: "Absent",
            color: Colors.red,
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y1
        ),
        ColumnSeries<ChartData, int>(
          name: "Leave",
            color: Colors.yellow,
            dataSource: chartData,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y2
        ),
      ],
    );

    //   SfCartesianChart(
    //     series: <ChartSeries>[
    //       SplineSeries<Saledata,double>(
    //         width: 5,
    //         color: AppColors().orange,
    //         dataSource: _chartdata,
    //         xValueMapper: (Saledata data,_)=>data.sales,
    //         yValueMapper: (Saledata data,_)=>data.year,),
    //       SplineSeries<Saledata,double>(
    //         width: 5,
    //         color: AppColors().yellow,
    //         dataSource: _chartdata2,
    //         xValueMapper: (Saledata data,_)=>data.sales,
    //         yValueMapper: (Saledata data,_)=>data.year,)
    //
    //     ]
    // );
  }
  final List<ChartData> chartData = [
    ChartData(2010, 75, 23,60),
    ChartData(2011, 80,38, 49),
    ChartData(2012,60, 34, 12),
    ChartData(2013,99, 52, 33),
    ChartData(2014,130, 40, 30)
  ];

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
class ChartData {
  ChartData(this.x, this.y, this.y1,this.y2);
  final int x;
  final double y;
  final double y1;
  final double y2;
}