import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../models/details.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List texts = [
    'Meet your Doctor And Solve your Teeth Problems',
    'Get Feedack Of Your Teeth',
    'Personalied Whining Schedule',
    'For Healthy Tooths'
  ];
  List<String> contacts = [
    'John Smith - 123-456-7890',
    'Emily Johnson - 234-567-8901',
    'Michael Williams - 345-678-9012',
    'Jessica Davis - 456-789-0123',
    'Christopher Brown - 567-890-1234',
    'Sarah Miller - 678-901-2345',
    'David Wilson - 789-012-3456',
    'Olivia Taylor - 890-123-4567',
    'Ethan Anderson - 901-234-5678',
    'Sophia Martinez - 012-345-6789',
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade100,
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    size: 30,
                  ),
                  Text(
                    "My Teeth",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 120.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3)),
              items: texts.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Row(
                      children: [
                        Container(
                            height: 240,
                            width: size.width * 0.75,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color.fromARGB(255, 73, 153, 219),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    i,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    );
                  },
                );
              }).toList(),
            ),
            const Divider(
              height: 20,
              thickness: 5,
            ),
            const Text(
              "See Whather Your Teeth Status !!",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Details()));
              },
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.lightBlueAccent),
                child: const Text(
                  "Start",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(15.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Contact Your Dentist")),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  scrollDirection: Axis.vertical,
                  height: 200.0,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3)),
              items: contacts.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 40,
                          width: size.width * 0.75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 128, 152, 171),
                          ),
                          child: Center(
                            child: Text(
                              i,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.ellipsis),
                            ),
                          )),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
