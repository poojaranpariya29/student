import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddData extends StatefulWidget {
  const AddData({super.key});

  @override
  State<AddData> createState() => _AddDataState();
}

class _AddDataState extends State<AddData> {
  TextEditingController grid = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController standard = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5D39AF),
        centerTitle: true,
        title: Text(
          "ADD DATA:",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: ListView(padding: const EdgeInsets.all(10), children: [
        CircleAvatar(
          radius: 50,
          child: Text(" + Add"),
        ),
        SizedBox(
          height: 30,
          child: Center(child: Text("Enter profile")),
        ),
        TextFormField(
          controller: grid,
          decoration: InputDecoration(
              hintText: "Enter your id:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: name,
          decoration: InputDecoration(
              hintText: "Enter your name:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: standard,
          decoration: InputDecoration(
              hintText: "Enter your standard:",
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)))),
        ),
        SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () {
            Map m1 = {
              "grid": grid.text,
              "name": name.text,
              "standard": standard.text,
            };
            Global.g1.studentList.add(m1);
            Navigator.pop(context, [grid.text, name.text, standard.text]);
          },
          child: const Text(
            "submit",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
      ]),
    );
  }
}

class Global {
  static Global g1 = Global();
  List studentList = [];
}
