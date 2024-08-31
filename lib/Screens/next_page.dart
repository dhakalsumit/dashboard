import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
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
            height: 31.5,
          ),
          SizedBox(
            width: 60,
          ),
        ],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Divider(
          color: Colors.black,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 19),
          child: Row(
            children: [
              Text(
                "Dashboard",
                textAlign: TextAlign.start,
                // style:  TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),
                style: GoogleFonts.museoModerno(
                  textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ),
              const Spacer(),
              const Text(
                "17 August 2024 | 11:20 AM",
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 150, left: 30),
          child: Text(
            "Your Data has been \nSuccessfully Submitted",
            style: TextStyle(fontSize: 20, height: 2.5),
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        const Row(
          children: [
            Spacer(),
            Text(
              "Next",
              style: TextStyle(fontSize: 23),
            ),
            SizedBox(
              width: 5,
            ),
            ImageIcon(
              AssetImage("images/next_page.png"),
              size: 35,
            ),
            SizedBox(
              width: 30,
            ),
          ],
        )
      ]),
    );
  }
}
