import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'model/developer_data.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
 //PROPERTIES
late List<DeveloperData> data; 
late List<DeveloperData> data2; 
late TooltipBehavior tooltipBehavior; 


//INIT
@override
  void initState() {
    super.initState();
    tooltipBehavior = TooltipBehavior(enable: true);
    data = [];
    data2 = [];
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
    data2.add(DeveloperData(year: 2018, developers: 20000));
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
              child: SfCircularChart(
                title: const ChartTitle(
                  text: 'Yearly Growth in the Flutter Community'
                ),
                tooltipBehavior: tooltipBehavior,
                series: <CircularSeries<DeveloperData, int>> [
                    PieSeries<DeveloperData, int>(
                      dataSource: data,
                      explode: true,
                      selectionBehavior: SelectionBehavior(enable: true),
                      xValueMapper: (DeveloperData developers, _) => developers.year,
                      yValueMapper: (DeveloperData developers,_)=> developers.developers,
                      dataLabelSettings: const DataLabelSettings(isVisible: true),
                      enableTooltip: true,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}