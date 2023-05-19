import 'package:assignment_netclan/widgets/custom_appbar.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';

import '../widgets/slider.dart';

class RefineScreen extends StatefulWidget {
  const RefineScreen({super.key});

  @override
  State<RefineScreen> createState() {
    return _RefineScreenState();
  }
}

class _RefineScreenState extends State<RefineScreen> {
  bool _isSelected = false;
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isSelected6 = false;
  bool _isSelected7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: custom_appbar.myAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8,
                      top: 10,
                    ),
                    child: Text(
                      "Select Your Availability",
                      style: TextStyle(
                        color: Color.fromARGB(255, 14, 59, 95),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const DropDownTextField(
                textFieldDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                dropDownItemCount: 4,
                dropDownList: [
                  DropDownValueModel(
                    name: 'Available | Hey Let Us Connect',
                    value: "value1",
                  ),
                  DropDownValueModel(
                    name: 'Away | Stay Discreet And Watch',
                    value: "value2",
                  ),
                  DropDownValueModel(
                    name: 'Busy | Do Not Disturb | Will Catch Up Later',
                    value: "value3",
                  ),
                  DropDownValueModel(
                    name: 'SOS | Emergency! Need Assistance! HELP',
                    value: "value4",
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8,
                      top: 10,
                    ),
                    child: Text(
                      "Add your status",
                      style: TextStyle(
                        color: Color.fromARGB(255, 14, 59, 95),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const TextField(
                maxLength: 250,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8,
                      top: 10,
                    ),
                    child: Text(
                      "Select Hyper Local Distance",
                      style: TextStyle(
                        color: Color.fromARGB(255, 14, 59, 95),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              const SliderExample(),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 24,
                    ),
                    child: Text('1 km'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('100km'),
                  ),
                ],
              ),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: 8,
                      top: 30,
                    ),
                    child: Text(
                      "Select Purpose",
                      style: TextStyle(
                        color: Color.fromARGB(255, 14, 59, 95),
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.spaceBetween,
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected = !_isSelected;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Coffee',
                          style: TextStyle(
                            color: !_isSelected
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected1 = !_isSelected1;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Business',
                          style: TextStyle(
                            color: !_isSelected1
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected1
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected2 = !_isSelected2;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Hobbies',
                          style: TextStyle(
                            color: !_isSelected2
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected2
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected3 = !_isSelected3;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Friendship',
                          style: TextStyle(
                            color: !_isSelected3
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected3
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected4 = !_isSelected4;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Movies',
                          style: TextStyle(
                            color: !_isSelected4
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected4
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected5 = !_isSelected5;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Dining',
                          style: TextStyle(
                            color: !_isSelected5
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected5
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected6 = !_isSelected6;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Dating',
                          style: TextStyle(
                            color: !_isSelected6
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected6
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    alignment: Alignment.topCenter,
                    // padding: const EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          _isSelected7 = !_isSelected7;
                        });
                        // Perform any action you want here
                      },
                      child: Chip(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        label: Text(
                          'Matrimony',
                          style: TextStyle(
                            color: !_isSelected7
                                ? const Color.fromARGB(255, 14, 58, 93)
                                : Colors.white,
                          ),
                        ),
                        backgroundColor: _isSelected7
                            ? const Color.fromARGB(255, 14, 58, 93)
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
