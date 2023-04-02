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
         const SizedBox(height: 70),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  const Text(
                    'Hallo, ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 18
                    ),
                  ),
                  Text(
                    '$name',
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      fontSize: 18
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,),
                    child: ClipOval(
                      child: Image.network(
                        'https://sumgyeojingem.com/wp-content/uploads/2016/06/13346749_1171300776235959_2367834133049962414_n.jpg',
                        height: 60,
                        width: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
      const SizedBox(height: 20),
    Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                'Pokedex',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color: Colors.yellow
                ),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 18, horizontal: 10),
                  hintText: 'Search Pokemon',
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: const Color.fromRGBO(230, 230, 230, 1),
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15),
                  )
                )
              ),
      Expanded(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            // Card 1
            Card(
              elevation: 5,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/474x/a8/38/dd/a838dd3b23cdabd22794507d71e4849e--goomy-pokemon-art-styles.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "#001",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Bulbasaur",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              "Grass",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Poison',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "Bulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger.",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

// card 2
            Card(
              elevation: 5,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://th.bing.com/th/id/R.74e4be3d80cb2605034a5e60d80207a6?rik=a%2bDDy6jPLWZuRQ&riu=http%3a%2f%2fpm1.narvii.com%2f5706%2fbc0ecc43dce0144e1bc22219db39a518a7ffdbc0_00.jpg&ehk=pOsA%2f0MTWYuAOIdFLeLDY8pgxXBy5xIzHQwPjsz%2fBk4%3d&risl=&pid=ImgRaw&r=0"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "#002",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Ivysaur",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              "Grass",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Poison',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "There is a bud on this Pokémon's back. To support its weight, Ivysaur's legs and trunk grow thick and strong. If it starts spending more time lying in the sunlight, it's a sign that the bud will bloom into a large flower soon.",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            // card 3

            Card(
              elevation: 5,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://vignette.wikia.nocookie.net/pokemonfanon/images/e/e9/Nihei_Venusaur.png/revision/latest?cb=20151203203317"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "#003",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Venusaur",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              "Grass",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Poison',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "There is a large flower on Venusaur's back. The flower is saidto take on vivid colors if it gets plenty of nutrition and sunlight. The flower's aroma soothes the emotions of people.",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            // card 4
            Card(
              elevation: 5,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://wallpapercave.com/wp/wp2392405.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "#004",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Charmander",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              "Fire",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 10,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              "",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "The flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokemon becomes enraged, the flame burns fiercely.",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),

            //card 5
            Card(
              elevation: 5,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/b9/d1/76/b9d176c1e607868739310e67adeab4e0.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            "#005",
                            style: TextStyle(fontSize: 13, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            "Charmeleon",
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: <Widget>[
                          Container(
                            width: 60,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              "Grass",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 10,
                            height: 32,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.purple,
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Text(
                              'Poison',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text(
                        "It has a barbaric nature. In battle, it whips its fiery tail around and slashes away with sharp claws.",
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    ],));
  }
}
