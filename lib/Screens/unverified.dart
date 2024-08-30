import 'package:flutter/material.dart';

class Unverified extends StatefulWidget {
  const Unverified({super.key});

  @override
  State<Unverified> createState() => _UnverifiedState();
}

class _UnverifiedState extends State<Unverified> {
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
           const SizedBox(
              height: 30,
            ),
            const Text(
              "Unverified Pro",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 420,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          
                          const Text(
                            "28936",
                            style: TextStyle(
                                fontSize: 20,
                                color: Color.fromARGB(196, 14, 14, 14)),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text("Bhim Bahadur Shrestha",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(197, 14, 14, 14))),
                          const SizedBox(
                            width: 10,
                          ),
                          IconButton(
                              onPressed: () {}, icon: Icon(Icons.settings))
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
