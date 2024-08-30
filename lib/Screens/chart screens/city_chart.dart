import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

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
      body: FormBuilder(
        child: Padding(
          padding: const EdgeInsets.all(10),
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
              // DropdownButtonFormField(items: [
              //   ...List.generate(6, (index) {
              //     return const DropdownMenuItem<dynamic>(child: Text("Hello"));
              //   })
              // ], onChanged: (index) {}),
              SizedBox(
                height: 40,
                child: FormBuilderDropdown(
                  decoration: InputDecoration(
                    labelText: 'Select an Option',
                  ),
                  name: "name",
                  items: const [
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 3',
                      child: Text('Option 3'),
                    ),
                  ],
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
      ),
    );
  }
}
