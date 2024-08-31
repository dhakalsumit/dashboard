import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_fonts/google_fonts.dart';

class UserProfile extends StatelessWidget {
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
      body: FormBuilder(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  Text(
                    "Dashboard",
                    textAlign: TextAlign.start,
                    // style:  TextStyle(fontSize: 20, fontWeight: FontWeight.w400,),
                    style: GoogleFonts.museoModerno(
                      textStyle: const TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      size: 28,
                    ),
                  ),
                  const ImageIcon(
                    AssetImage(
                      "images/next_page.png",
                    ),
                    size: 35,
                  )
                ],
              ),
              UserInfoRow(label: 'ID', value: '26535'),
              UserInfoRow(label: 'Name', value: 'Bhim Bahadur Shrestha'),
              UserInfoRow(label: 'Phone', value: '+9779844829627'),
              UserInfoRow(label: 'City', value: 'Kathmandu'),
              UserInfoRow(label: 'Profession', value: 'Painter'),
              UserInfoRow(label: 'Reg. Date', value: '2021-05-09 1:48:59'),
              UserInfoRow(label: 'Gender', value: 'Male'),
              UserInfoRow(
                label: 'DOB',
                value: '1995-01-28',
                item: "yes",
              ),
              UserInfoRow(label: 'User Type', value: 'Professional'),
              UserInfoRow(label: 'Update', value: '2021-05-09 1:49:00'),
              Spacer(),
              const Image(
                image: AssetImage("images/line.png"),
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.transparent,
                      border: Border.all(color: Colors.black)),
                  height: 50,
                  child: FormBuilderDropdown(
                    iconSize: 60,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(top: 15, left: 40),
                      border: InputBorder.none,
                      labelText: 'User Type',
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserInfoRow extends StatelessWidget {
  final String label;
  final String value;
  final String? item;

  UserInfoRow({required this.label, required this.value, this.item});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16),
          ),
          Text(
            value,
            textAlign: TextAlign.start,
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
