import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 187, 187, 187),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        title: const Text('Order Details'),
      ),
      body: Container(
        color: const Color.fromARGB(255, 223, 222, 222),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(30.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(15),
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 231, 247, 244),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                        child: Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Color.fromARGB(255, 60, 183, 142),
                              ),
                              child: const Icon(
                                Icons.check_circle_rounded,
                                size: 25,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Completed',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 60, 183, 142),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text('Order Completed 24 July 2024')
                              ],
                            ),
                            const SizedBox(
                              width: 12,
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Order Id',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            '#524120',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      const Divider(height: 20),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Order date ',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Spacer(),
                          Text(
                            '20 July 2024',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Purchased Items',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/porsche.jpg',
                            height: 50,
                            width: 100,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Blue t-shirt',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Size: L',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '\$50.00',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Color: yellow',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Qty:1')
                            ],
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
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Hoodie ROse',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                'Size: L',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 3,
                              ),
                              Text(
                                '\$50.00',
                                style: TextStyle(fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          const Spacer(),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Color: yellow',
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text('Qty:1')
                            ],
                          )
                        ],
                      ),
                    ],
                  )),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.all(30.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: (const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shiping Information',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Name',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          'jacob Jones',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Phone Number',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          '(105)555_3652',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          '6140 Sunbrook',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          'Shipment',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          'Economy',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                )),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(30.0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Payment Information',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          'Payment Method',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Spacer(),
                        Text(
                          'cash on delivery',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
