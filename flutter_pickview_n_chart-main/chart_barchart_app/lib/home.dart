import 'package:chart_barchart_app/second_page.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'model/developer_data.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Property
  late List <DeveloperData> data;
  late List <DeveloperData> data2;
  late TooltipBehavior tooltipBehavior;

  @override
  void initState() {
    super.initState();
    data = [];
    data2 = [];
    tooltipBehavior = TooltipBehavior(enable: true);
    addData();
    addData2();
  }

  addData(){
   data.add(DeveloperData(year: 2017, developers: 19000)); 
   data.add(DeveloperData(year: 2018, developers: 40000)); 
   data.add(DeveloperData(year: 2019, developers: 35000)); 
   data.add(DeveloperData(year: 2020, developers: 37000)); 
   data.add(DeveloperData(year: 2021, developers: 45000)); 
  }

  addData2(){
   data2.add(DeveloperData(year: 2017, developers: 9000)); 
   data2.add(DeveloperData(year: 2018, developers: 0000)); 
   data2.add(DeveloperData(year: 2019, developers: 17000)); 
   data2.add(DeveloperData(year: 2020, developers: 18000)); 
   data2.add(DeveloperData(year: 2021, developers: 23000)); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bar Chart'),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              width: 380,
              height: 600,
              child: SfCartesianChart(
                title: const ChartTitle(
                  text: 'Yearly Growth in the Flutter Community'
                ),
                legend: const Legend(isVisible: true),
                tooltipBehavior: tooltipBehavior,
                series: [
                  // ColumnSeries : 세로 막대 그래프
                  // BarSeries : 가로 막대 그래프
                  // LineSeries : 선 그래프 : 추세를 볼 때, 비교
                  // ScatterSeries : 산점도
            
                  // ScatterSeries<DeveloperData, int>(
                  // LineSeries<DeveloperData, int>(
                  // BarSeries<DeveloperData, int>(
                  ColumnSeries<DeveloperData, int>(
                    color: Colors.green,
                    dataSource: data,
                    xValueMapper: (DeveloperData developers, _) => developers.year, // 변수를 두개 가져와야하는데 쓸일이 없을 때 _를 사용함.
                    yValueMapper: (DeveloperData developers, _) => developers.developers,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                    enableTooltip: true,  // 기본값
                  ),
            
                  LineSeries<DeveloperData, int>(
                  // BarSeries<DeveloperData, int>(
                  // ColumnSeries<DeveloperData, int>(
                    color: Colors.pink,
                    dataSource: data2,
                    xValueMapper: (DeveloperData developers, _) => developers.year, // 변수를 두개 가져와야하는데 쓸일이 없을 때 _를 사용함.
                    yValueMapper: (DeveloperData developers, _) => developers.developers,
                    dataLabelSettings: const DataLabelSettings(isVisible: true),
                    enableTooltip: true,  // 기본값
                  ),
                  // AreaSeries(xValueMapper: xValueMapper, yValueMapper: yValueMapper)
                ],
                // x축을 category로 표현
                primaryXAxis: const CategoryAxis(
                  title: AxisTitle(text: '년도'),
                ),
                // y축을 숫자로 표현
                primaryYAxis: const CategoryAxis(
                  title: AxisTitle(text: 'Community 수'),
                ),
              ),
            ),

            ElevatedButton(
              onPressed: () => Get.to(const SecondPage()), 
              child: const Text('Pie Chart')
            )
          ],
        ),
      ),
    );
  }
}