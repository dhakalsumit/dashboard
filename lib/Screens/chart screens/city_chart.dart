import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CityChart extends StatefulWidget {
  const CityChart({super.key});

  @override
  State<CityChart> createState() => _CityChartState();
}

class _CityChartState extends State<CityChart> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: const [
        Image(
          image: AssetImage(
            "images/logo.png",
          ),
          height: 100,
        ),
        SizedBox(
          width: 10,
        ),
        Image(
          image: AssetImage(
            "images/sriyog.png",
          ),
          height: 30,
        ),
        SizedBox(
          width: 60,
        ),
      ]),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            const Divider(
              color: Colors.black,
            ),
            const Row(
              children: [
                Text(
                  "Dashboard",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  "17 August 2024 | 11:20 AM",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black54)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      width: 40,
                    ),
                    // Text("User Type"),
                    Spacer(),
                    DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_drop_down_circle),
                      iconSize: 30,
                      elevation: 16,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 112, 112, 112),
                      ),
                      onChanged: (newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['One', 'Two', 'Three', 'Four']
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Row(
                            children: [
                              Text(value),
                            ],
                          ),
                        );
                      }).toList(),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: PieChart(PieChartData(
                  centerSpaceRadius: BorderSide.strokeAlignCenter,
                  centerSpaceColor: Colors.yellow,
                  borderData: FlBorderData(show: false),
                  sectionsSpace: 1,
                  sections: [
                    PieChartSectionData(
                        value: 10,
                        color: const Color.fromARGB(255, 91, 93, 94),
                        radius: 110),
                    PieChartSectionData(
                        value: 30,
                        color: const Color.fromARGB(255, 160, 159, 158),
                        radius: 110),
                    PieChartSectionData(
                        value: 24,
                        color: const Color.fromARGB(255, 112, 112, 112),
                        radius: 110),
                    PieChartSectionData(
                        value: 35,
                        color: Color.fromARGB(255, 42, 41, 41),
                        radius: 110),
                    PieChartSectionData(
                        value: 56,
                        color: const Color.fromARGB(255, 200, 200, 199),
                        radius: 110),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
