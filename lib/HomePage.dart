import 'package:example1/details.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});
  @override
  State<homepage> createState() => _homepage();
}

class _homepage extends State<homepage> {
  List items = [
    {
      'name': Icons.man,
      'title': "Men",
    },
    {
      'name': Icons.woman,
      'title': "Women",
    },
    {
      'name': Icons.laptop,
      'title': "LapTop",
    },
    {
      'name': Icons.car_crash,
      'title': "Car",
    },
    {
      'name': Icons.smartphone_outlined,
      'title': "Phones",
    },
    {
      'name': Icons.camera_indoor,
      'title': "cameras",
    },
    {
      'name': Icons.watch,
      'title': "watches",
    },
    {
      'name': Icons.cyclone,
      'title': "cycle",
    },
    {
      'name': Icons.access_alarm,
      'title': "alarms",
    },
    {
      'name': Icons.card_giftcard,
      'title': "gifts",
    },
  ];

  List Bestsellers = [
    {
      'image':
          "https://m.media-amazon.com/images/I/61HujLZA+SL._AC_SY300_SX300_.jpg",
      'title': "HUAWEI Kirin A1",
      'subtitle': " Made of high quality materials.",
      'price': "23\$"
    },
    {
      'image': "https://m.media-amazon.com/images/I/31EsQcEdMtL._AC_.jpg",
      'title': "Women's Black Occasions Dress ",
      'subtitle': "(80% Cotton 20% Lycra)  ",
      'price': "33\$"
    },
    {
      'image': "https://m.media-amazon.com/images/I/5128rEHKWgL._AC_SX466_.jpg",
      'title': "Anker",
      'subtitle': "  Anker Soundcore R50i Black True Wireless ",
      'price': "43\$"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 40,
          selectedItemColor: Color.fromARGB(255, 32, 14, 7),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "."),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: (".")),
          ],
        ),
        body: Container(
          child: ListView(children: [
            Row(
              children: [
                Expanded(
                    child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "search", prefixIcon: Icon(Icons.search)),
                )),
                Icon(Icons.menu)
              ],
            ),
            Container(
              margin: EdgeInsets.all(12),
            ),
            const Text(
              "Categories",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Container(
              height: 91,
              child: ListView.builder(
                itemCount: items.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        child: Icon(
                          items[index]['name'],
                          size: 37,
                        ),
                        height: 44,
                        width: 50,
                        margin: EdgeInsets.all(7),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color.fromARGB(255, 180, 222, 228)),
                      ),
                      Text(
                        items[index]['title'],
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  );
                },
              ),
            ),
            Container(
              width: 20,
              margin: EdgeInsets.all(11),
            ),
            Text(
              "Best sellers",
              style: TextStyle(
                fontSize: 23,
              ),
            ),
            Container(
              height: 22,
            ),
            GridView.builder(
                itemCount: Bestsellers.length,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 330,
                ),
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              itemdetails(data: Bestsellers[index])));
                    },
                    child: Card(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 250,
                          color: const Color.fromARGB(255, 221, 235, 221),
                          padding: EdgeInsets.all(8),
                          child: Image.network(
                            Bestsellers[index]['image'],
                            height: 150,
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          Bestsellers[index]['title'],
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(Bestsellers[index]['subtitle']),
                        Text(
                          Bestsellers[index]['price'],
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                        ),
                      ],
                    )),
                  );
                })
          ]),
        ));
  }
}
