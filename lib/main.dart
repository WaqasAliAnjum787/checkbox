import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const CheckBoxAndRadio(),
    );
  }
}

class CheckBoxAndRadio extends StatefulWidget {
  const CheckBoxAndRadio({super.key});

  @override
  State<CheckBoxAndRadio> createState() => _CheckBoxAndRadioState();
}

class _CheckBoxAndRadioState extends State<CheckBoxAndRadio> {
  bool? myValue;
  bool mySeocndValue = false;
  String getMyData = '';
  String panadol = "Panadol";
  String broofan = "Broofan";
  String callPool = "Call Pool";
  String semacta = "semata";
  String? myGroupValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        //Check Box is here
        //tristate ma null hoti value is waja sy null able ka instance baana kay is ko assing karwaa dia hai
        //or jo wo instance null hoga wo intermidiate form ma hoga

        Checkbox(
          tristate: true,
          value: myValue,
          onChanged: (value) {
            setState(() {
              myValue = value;
            });
          },
        ),
        Checkbox(
          value: mySeocndValue,
          onChanged: checked,
        ),
        Radio(
          value: panadol,
          groupValue: myGroupValue,
          onChanged: checkRadio,
        ),
        Radio(
          value: broofan,
          groupValue: myGroupValue,
          onChanged: checkRadio,
        ),
        Radio(
          value: callPool,
          groupValue: myGroupValue,
          onChanged: checkRadio,
        ),
        Radio(
          value: semacta,
          groupValue: myGroupValue,
          onChanged: checkRadio,
        ),
        FloatingActionButton(
          onPressed: getData,
          child: const Text('Get Selected Data'),
        ),
        Text(getMyData)
      ]),
    );
  }

  void checked(bool? value) {
    setState(() {
      mySeocndValue = value!;
    });
  }

  void checkRadio(String? value) {
    setState(() {
      myGroupValue = value;
    });
  }

  void getData() {
    setState(() {
      getMyData = myGroupValue!;
    });
  }
}
