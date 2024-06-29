import 'package:flutter/material.dart';
import 'package:food_app2/src/utilities/gridtile.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
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
                    color: Colors.black,
                    child: Icon(
                      Icons.sort,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 260,
                  ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.black),
                    child: Stack(
                      children: [
                        const Positioned(
                          right: 2,
                          top: 4,
                          child: Icon(
                            Icons.shopping_cart,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          right: 1,
                          top: 1,
                          child: Container(
                              height: 17,
                              width: 17,
                              decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xffeb3254)),
                              child: const Text(
                                "0",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),

              // heading
              Text(
                "Delicious food already to deliver to you",
                style: GoogleFonts.spaceMono(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),

              const SizedBox(
                height: 20,
              ),

              //searching bar
              Card(
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300),
                  child: TextFormField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5)),
                      hintText: "Search something ...",
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),

              //tab section
              TabBar(
                  indicatorColor: const Color(0xffeb3254),
                  dividerHeight: 0,
                  dividerColor: Colors.black,
                  tabs: [
                    Text(
                      "Pizza",
                      style: GoogleFonts.spaceMono(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Burger",
                      style: GoogleFonts.spaceMono(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Drinks",
                      style: GoogleFonts.spaceMono(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.normal),
                    ),
                  ]),
              const SizedBox(
                height: 30,
              ),

              Expanded(
                child: SizedBox(
                  child: TabBarView(children: [
                    gridTile(
                        imageUrl: "assets/food_one.png",
                        heading: "burger",
                        subHeading: "tasty and yummy",
                        price: "\$10.00"),
                    Container(
                      color: Colors.green,
                    ),
                    Container(
                      color: Colors.blue,
                    )
                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
