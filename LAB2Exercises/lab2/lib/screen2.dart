import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 70,
        leading: const Icon(Icons.arrow_back),
        actions: const [
          SearchBar(
            constraints: BoxConstraints(maxWidth: 300, minHeight: 50),
            leading: Icon(Icons.search),
            hintText: 'Search Product',
          ),
          SizedBox(
            width: 30,
          ),
          Icon(Icons.shopping_cart_checkout),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.notifications),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/porsche.jpg',
              ),
              const Positioned(
                bottom: 10,
                left: 50,
                child: Row(
                  children: [
                    Column(
                      children: [
                        Icon(
                          Icons.circle_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.navigation_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.map_outlined,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.people,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          'Lorem Ipsum',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\$8.6',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Lorem ipsum dolor sit amet,'),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          '5.0',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text('(354)'),
                        SizedBox(
                          width: 40,
                        ),
                        Text(
                          '|',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('\$40 Sale'),
                        SizedBox(
                          width: 20,
                        ),
                        Text(
                          '|',
                          style: TextStyle(fontSize: 20),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.location_on,
                          color: Colors.grey,
                        ),
                        Text('Brooklyn')
                      ],
                    )
                  ],
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 20,
            color: Color.fromARGB(255, 230, 227, 227),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Variant',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      'Size:',
                      style: TextStyle(fontSize: 15),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      'XS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 35,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 115, 176, 225),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      // border: Border(
                      //     bottom: BorderSide(width: 1),
                      //     top: BorderSide(width: 1),
                      //     left: BorderSide(width: 1),
                      //     right: BorderSide(width: 1)),
                      ),
                  child: const Center(
                    child: Text(
                      'XS',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'S',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'M',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'L',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 50,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'XL',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  'Color:',
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'RED',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 60,
                  height: 35,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 115, 176, 225),
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      // border: Border(
                      //     bottom: BorderSide(width: 1),
                      //     top: BorderSide(width: 1),
                      //     left: BorderSide(width: 1),
                      //     right: BorderSide(width: 1)),
                      ),
                  child: const Center(
                    child: Text(
                      'Red',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Blue',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Green',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Black',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  width: 60,
                  height: 35,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border(
                      bottom: BorderSide(width: 1),
                      top: BorderSide(width: 1),
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      'Yellow',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Icon(Icons.messenger_rounded),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue),
                    child: const Text('Add To Shoping Cart'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
