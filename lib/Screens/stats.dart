import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
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
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            const Text(
              "Stats",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "28936",
                            style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(196, 14, 14, 14)),
                          ),
                          SizedBox(
                            width: 25,
                          ),
                          Text("Unverified Pro",
                              style: TextStyle(
                                  fontSize: 25,
                                  color: Color.fromARGB(197, 14, 14, 14))),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}