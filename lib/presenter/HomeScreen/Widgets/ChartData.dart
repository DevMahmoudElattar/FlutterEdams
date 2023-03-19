import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../../../utils/utils.dart';

class ChartData extends StatelessWidget {
  ChartData({Key? key}) : super(key: key);

  final List<ChartsData> chartsData = [
    ChartsData(1, 10),
    ChartsData(2, 20),
    ChartsData(3, 30),
    ChartsData(4, 31),
    ChartsData(5, 32),
    ChartsData(6, 33),
    ChartsData(7, 34),
    ChartsData(8, 35),
    ChartsData(9, 36),
    ChartsData(10, 36),
    ChartsData(11, 40),
    ChartsData(12, 39),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        width: SpacingValues.SectionWidth,
        height: SpacingValues.SectionHeight,
        child: Center(
            child: SfCartesianChart(
          enableAxisAnimation: true,
          trackballBehavior: TrackballBehavior(enable: true,activationMode: ActivationMode.singleTap),
          primaryXAxis: CategoryAxis(),
          series: <ChartSeries>[
            SplineSeries<ChartsData, int>(
                dataSource: chartsData,
                // Type of spline
                splineType: SplineType.cardinal,
                cardinalSplineTension: 0.9,
                xValueMapper: (ChartsData data, _) => data.x,
                yValueMapper: (ChartsData data, _) => data.y)
          ],
        )));
  }
}

class ChartsData {
  ChartsData(this.x, this.y);
  final int x;
  final double? y;
}
