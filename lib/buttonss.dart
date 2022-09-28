import 'package:flutter/material.dart';

class buttons extends StatefulWidget {
  const buttons({Key? key}) : super(key: key);

  @override
  State<buttons> createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {
  var Items = ["Gujrat", "Punjab", "Goa", "Delhi", "Mumbai"];
  int value = 0;
  double v2 = 0.0;

  var currentstate = "Gujrat";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "TextButtons",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    backgroundColor: Colors.blue),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          ElevatedButton(
              onPressed: () {
                print("Heelo");
              },
              child: Text("Elevented Buttons")),
          SizedBox(
            width: 10,
          ),
          DropdownButton(
              value: currentstate,
              items: Items.map((String Items) {
                return DropdownMenuItem(value: Items, child: Text(Items));
              }).toList(),
              onChanged: (String? newvalue) {
                setState(() {
                  currentstate = newvalue!;
                });
              }),
          SizedBox(
            width: 10,
          ),
          IconButton(
            onPressed: () {
              setState(() {
                value += 5;
              });
            },
            icon: Icon(Icons.add),
            iconSize: 20,
            color: Colors.orange,
            splashColor: Colors.black,
            highlightColor: Colors.purple,
            tooltip: "This IS Button",
          ),
          Text("Bitton Value${value}"),
          InkWell(
            child: Icon(
              Icons.ac_unit,
              size: 40,
            ),
            highlightColor: Colors.purple,
            splashColor: Colors.black,
            onTap: () {
              setState(() {
                v2 += 2;
              });
            },
          ),
          Text("InkWell Value${v2}")
        ],
      ),
    ));
  }
}
