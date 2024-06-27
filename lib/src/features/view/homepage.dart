import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),

            // top icon
            Row(
              children: [
                const Card(
                  color: Colors.grey,
                  child: Icon(
                    Icons.sort,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 260,
                ),
                Card(
                    color: Colors.grey,
                    child: Stack(
                      children: [
                        const Positioned(
                          child: Icon(
                            Icons.shopping_cart,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          right: 1,
                          top: 22,
                          child: Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffeb3254)),
                              child: const Text(
                                "0",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
