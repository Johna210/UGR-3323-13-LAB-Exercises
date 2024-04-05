import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.question_mark_outlined,
          color: Colors.white,
        ),
        title: const Text('Tracker'),
        centerTitle: true,
        backgroundColor: Colors.blue[600],
        actions: const [
          Row(
            children: [
              Icon(
                Icons.notification_important,
                color: Colors.white,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 75,
                    height: 75,
                    clipBehavior: Clip.hardEdge,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: Image.asset(
                      'assets/porsche.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Column(
                    children: [
                      Text(
                        'Robert Steven',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(Icons.car_rental),
                          SizedBox(
                            width: 5,
                          ),
                          Text('091132142152'),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 100,
                  ),
                  const Text(
                    'Log out',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.blue[600],
              child: const Text(
                'Online | Battery: 90% ',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                padding: const EdgeInsets.all(10),
                children: <Widget>[
                  Column(
                    children: [
                      Icon(
                        Icons.map,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Map'),
                      const Text('All devices')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Live Location'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.history,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('History Location'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.sd_rounded,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Set Geoforce')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.info,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Detail Info'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.edit,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Edit device')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.mobile_friendly,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Change'),
                      const Text('Current Number')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.battery_saver,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('battery Saving mode'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.flash_auto,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Normal Mode')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.power_off,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Shutdown device')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.add_chart,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Device'),
                      const Text('Command history')
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.blue[600],
                        size: 40,
                      ),
                      const Text('Contact us')
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
