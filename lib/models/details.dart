import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  String message = '';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "your results could be ",
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.red,
                      child: const Text(
                        "Level 1 \n High \n(Damage)",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.green,
                      child: const Text(
                        "Level 2 \n Medium \n(Damage)",
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      color: Colors.yellow,
                      child: const Text(
                        "Level 3 \n Low \n(Damage)",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    message = 'You are paused';
                  });

                  const SizedBox(
                    height: 30,
                  );
                },
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.lightBlueAccent),
                  child: const Text(
                    "Pause",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(message),
            ],
          )),
    );
  }
}
