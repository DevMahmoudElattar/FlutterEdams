import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../../utils/utils.dart';

class ChartData extends StatelessWidget {
  ChartData({Key? key}) : super(key: key);

  // final List<ChartsData> chartsData = [
  //   ChartsData(1, 10),
  //   ChartsData(2, 20),
  //   ChartsData(3, 30),
  //   ChartsData(4, 31),
  //   ChartsData(5, 32),
  //   ChartsData(6, 33),
  //   ChartsData(7, 34),
  //   ChartsData(8, 35),
  //   ChartsData(9, 36),
  //   ChartsData(10, 36),
  //   ChartsData(11, 40),
  //   ChartsData(12, 39),
  // ];

  final List<ChartsData> chartsData = [
    ChartsData("Jan 2023",100, 80),
    ChartsData("FEB 2023",90, 70),
    ChartsData("MAR 2023",70, 70),
    ChartsData("APR 2023",150, 20),
    ChartsData("MAY 2023",30, 20),
    ChartsData("JUN 2023",50, 80),
    ChartsData("JUL 2023",90, 30),
    ChartsData("AUG 2023",90, 0),

  ];

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //       width: SpacingValues.SectionWidth,
  //       height: SpacingValues.SectionHeight,
  //       child: Center(
  //           child: SfCartesianChart(
  //         enableAxisAnimation: true,
  //         trackballBehavior: TrackballBehavior(enable: true,activationMode: ActivationMode.singleTap),
  //         primaryXAxis: CategoryAxis(),
  //         series: <ChartSeries>[
  //           SplineSeries<ChartsData, int>(
  //               dataSource: chartsData,
  //               // Type of spline
  //               splineType: SplineType.cardinal,
  //               cardinalSplineTension: 0.9,
  //               xValueMapper: (ChartsData data, _) => data.x,
  //               yValueMapper: (ChartsData data, _) => data.y)
  //         ],
  //       )));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
              color: Colors.white,
                child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    enableAxisAnimation: true,
                    trackballBehavior: TrackballBehavior(enable: true,activationMode: ActivationMode.singleTap),
                    series: <ChartSeries>[
                      StackedColumnSeries<ChartsData, String>(
                        color: ColorsVal.mainCardBG,
                          groupName: 'Group A',
                          dataSource: chartsData,
                          xValueMapper: (ChartsData data, _) => data.month,
                          yValueMapper: (ChartsData data, _) => data.amount
                      ),
                      // StackedColumnSeries<ChartsData, String>(
                      //     groupName: 'Group B',
                      //     dataSource: ChartsData,
                      //     xValueMapper: (ChartsData data, _) => data.x,
                      //     yValueMapper: (ChartsData data, _) => data.y2
                      // ),
                      StackedColumnSeries<ChartsData, String>(
                          color: ColorsVal.ArrowDownBalanceCollor,
                          groupName: 'Group B',
                          dataSource: chartsData,
                          xValueMapper: (ChartsData data, _) => data.month,
                          yValueMapper: (ChartsData data, _) => data.paidAmount
                      ),
                      // StackedColumnSeries<ChartData, String>(
                      //     groupName: 'Group B',
                      //     dataSource: ChartsData,
                      //     xValueMapper: (ChartsData data, _) => data.x,
                      //     yValueMapper: (ChartsData data, _) => data.y4
                      // )
                    ]
                )
            )
        )
    );
  }
}

class ChartsData {
  ChartsData(this.month, this.amount,this.paidAmount);
  final String month;
  final double amount;
  final double paidAmount;
}
