import 'package:flutter/material.dart';

import 'buttonss.dart';

void main() {
  runApp(MaterialApp(
    home: listviws(),
  ));
}

class listviws extends StatefulWidget {
  const listviws({Key? key}) : super(key: key);

  @override
  State<listviws> createState() => _listviwsState();
}

class _listviwsState extends State<listviws> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(

        children: [
          Card(
            child: ListTile(
              title: Text("Item 0"),
              subtitle: Text("Item 0"),
              trailing: Icon(Icons.ac_unit),
              leading: IconButton(onPressed: () {}, icon: Icon(Icons.list)),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Item 1"),
              subtitle: Text("Item 1"),
              trailing: Icon(Icons.account_balance),
              leading: IconButton(
                  onPressed: () {}, icon: Icon(Icons.list)),
            ),
          ),Container(
            child: TextButton(onPressed: () {
              
            }, child: Text("Login")),
            
            
          ),
          SizedBox(
            height: 200,

          ),
          ElevatedButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context) {
              return buttons();
            },));
            
          }, child: Text("EleventedButuuon"))
        ],
      
      ),

    );
  }
}
