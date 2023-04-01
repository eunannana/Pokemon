import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.name}) : super(key: key);

  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, 
        children: [
      Row(
        children:<Widget> [
          Row(
            children: <Widget>[
            Text("Hello, ", style: TextStyle(fontSize: 24, color: Colors.black),),
            Text("$name", style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 24, 139, 193)),)
          ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 70, left: 170),
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
          style: TextStyle(
              fontSize: 30,
              color: Color.fromARGB(254, 255, 213, 0),
              fontWeight: FontWeight.bold),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(16),
        child: TextField(
          decoration: InputDecoration(
            hintText: 'Search',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
        ),
      ),
      Expanded(
        child: ListView(
          padding: EdgeInsets.all(8),
          children: [
            // Card 1
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          //card 2
          Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //card 3
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //card 4
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

// card 5
Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // card 6
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //card 7
            Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Teks kiri",
                              style: TextStyle(fontSize: 18),
                            ),
                            Text(
                              "Teks kanan",
                              style: TextStyle(fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "Subtitle",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    ]));
  }
}
