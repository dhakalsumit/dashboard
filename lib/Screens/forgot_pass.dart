import 'package:flutter/material.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({super.key});

  @override
  State<ForgotPass> createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 180, left: 40, right: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Row(
                children: [
                  Image(
                    image: AssetImage(
                      "images/logo.png",
                    ),
                    height: 80,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Image(
                        image: AssetImage(
                          "images/sriyog.png",
                        ),
                        height: 35,
                      ),
                      Text(
                        "Dashboard",
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 70),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  labelText: "Phone Number",
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 90),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelText: "**********",
                    labelStyle: TextStyle()),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage(
                    "images/forward.png",
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "forgot password",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
