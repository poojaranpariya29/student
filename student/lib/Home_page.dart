import 'package:flutter/material.dart';

import 'Add_data_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5D39AF),
        centerTitle: true,
        title: Text(
          "DETAIL",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: Global.g1.studentList.length,
        itemBuilder: (context, index) {
          return Container(
              height: MediaQuery.of(context).size.height * 0.10,
              width: double.infinity,
              decoration: BoxDecoration(color: Colors.grey),
              child: Column(
                children: [
                  Text(
                    "${Global.g1.studentList[index]["grid"]}",
                  ),
                  Text(
                    "${Global.g1.studentList[index]["name"]}",
                  ),
                  Text(
                    "${Global.g1.studentList[index]["standard"]}",
                  ),
                ],
              ));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "adddata");

          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
