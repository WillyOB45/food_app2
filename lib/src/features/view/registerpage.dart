import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:food_app2/src/features/view/homemain.dart';
import 'package:food_app2/src/features/view/sigin.dart';
import 'package:food_app2/src/utilities/loadingwidget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  //password visiblity
  bool _isvisible = true;

  // laoding state
  bool _isLoading = false;

  void goToNextPage() async {
    await Future.delayed(const Duration(seconds: 20));
    Get.to(const HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),

            // image logo
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 380,
                width: 500,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xffeb3254),
                ),
                child: Image.asset(
                  "assets/food_logo.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // title and sub-title section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Register to continue...",
                      style: GoogleFonts.spaceMono(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 6,
                    ),

                    // user sigin
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your name",
                            prefixIcon: const Icon(
                              Icons.security,
                              color: Color(0xffeb3254),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),

                    // email input
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter your email",
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Color(0xffeb3254),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),

                    // password input
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.symmetric(horizontal: 10),
                      child: SizedBox(
                        height: 50,
                        width: 400,
                        child: TextFormField(
                          obscureText: _isvisible,
                          decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isvisible = !_isvisible;
                                  });
                                },
                                icon: _isvisible
                                    ? const Icon(
                                        Icons.visibility_off,
                                        color: Color(0xffeb3254),
                                      )
                                    : const Icon(
                                        Icons.visibility,
                                        color: Color(0xffeb3254),
                                      )),
                            hintText: "Enter your passwood",
                            prefixIcon: const Icon(
                              Icons.security,
                              color: Color(0xffeb3254),
                            ),
                            enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(5),
                            )),
                            focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            )),
                            fillColor: Colors.grey.shade300,
                            filled: true,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),

            // sigin button

            GestureDetector(
              onTap: () {
                setState(() {
                  _isLoading = !_isLoading;
                });
                goToNextPage();
              },
              child: _isLoading
                  ? loadingWidget()
                  : Container(
                      height: 50,
                      width: 350,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffeb3254),
                      ),
                      child: Text(
                        "Click to sign up",
                        style: GoogleFonts.spaceMono(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
            ),

            const SizedBox(
              height: 10,
            ),

            // Already have an account?
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: GoogleFonts.lato(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.normal),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    Get.to(const SignIn(),
                        transition: Transition.fade,
                        duration: const Duration(seconds: 1));
                  },
                  splashColor: const Color(0xffeb3254),
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.spaceMono(
                        color: const Color(0xffeb3254),
                        fontSize: 15,
                        fontWeight: FontWeight.normal),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
