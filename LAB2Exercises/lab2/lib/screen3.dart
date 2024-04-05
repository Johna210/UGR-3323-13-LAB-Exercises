import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Row(
          children: [Icon(Icons.arrow_back), Text('Order Details')],
        ),
      ),
      body: Column(children: [
        Container(
            color: Colors.white,
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(25),
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 215, 232, 246),
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.check_circle,
                        size: 35,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Completed',
                            textAlign: TextAlign.start,
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Order Completed 24 July 2024')
                        ],
                      )
                    ],
                  ),
                ),
                Divider(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text('Order Id'), Spacer(), Text('#52')],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Order date '),
                    Spacer(),
                    Text('20 July 2024')
                  ],
                )
              ],
            )),
        const SizedBox(
          height: 10,
        ),
        Container(
            color: Colors.white,
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const Text('Purchased Items'),
                Row(
                  children: [
                    Image.asset(
                      'assets/porsche.jpg',
                      height: 50,
                      width: 100,
                    ),
                    const Column(
                      children: [
                        Text('Blue t-shirt'),
                        Text('Size: L'),
                        Text('50.00')
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [Text('Color: yellow'), Text('Qty:1')],
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/porsche.jpg',
                      height: 50,
                      width: 100,
                    ),
                    const Column(
                      children: [
                        Text('Hoodie ROse'),
                        Text('Size: L'),
                        Text('50.00')
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [Text('Color: yellow'), Text('Qty:1')],
                    )
                  ],
                ),
              ],
            )),
        const SizedBox(height: 10),
        Container(
          padding: const EdgeInsets.all(30.0),
          color: Colors.white,
          child: (const Column(
            children: [
              Text('Shiping Information', style: TextStyle(fontSize: 20)),
              Row(
                children: [Text('Name'), Spacer(), Text('jacob Jones')],
              ),
              Row(
                children: [
                  Text('Phone Number'),
                  Spacer(),
                  Text('(105)555_3652')
                ],
              ),
              Row(
                children: [Text('Address'), Spacer(), Text('6140 Sunbrook')],
              ),
              Row(
                children: [Text('Shipment'), Spacer(), Text('Economy')],
              ),
            ],
          )),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
            padding: const EdgeInsets.all(30.0),
            height: 280,
            color: Colors.white,
            child: const Column(
              children: [
                Text('Payment Information', style: TextStyle(fontSize: 20)),
                Row(
                  children: [
                    Text('Payment Method'),
                    Spacer(),
                    Text('cash on delivery')
                  ],
                ),
              ],
            ))
      ]),
    );
  }
}
