import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.name}) : super(key: key);

  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 70, right: 70, left: 10),
                child: Text(
                  "Hallo, $name",
                  style: TextStyle(fontSize: 24),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 70, left: 90),
                child: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://sumgyeojingem.com/wp-content/uploads/2016/06/13346749_1171300776235959_2367834133049962414_n.jpg'),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 16, bottom: 1),
            child: Text(
              "Pokedex",
              style: TextStyle(fontSize: 30, color: Color.fromARGB(254, 255, 213, 0), fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(5),
            child: TextField(
              decoration: InputDecoration(
                 prefixIcon: Icon(Icons.search, color: Colors.grey),
                hintText: 'Search Pokemon',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          
        ],
      ),
    );
  }
}
