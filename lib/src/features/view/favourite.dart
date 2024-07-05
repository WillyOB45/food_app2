import 'package:flutter/material.dart';
import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';

class FavePage extends StatefulWidget {
  const FavePage({super.key});

  @override
  State<FavePage> createState() => _FavePageState();
}

class _FavePageState extends State<FavePage> {
  final _formkey = GlobalKey<FormState>();

  void validate() {
    if (_formkey.currentState!.validate()) {
      print("hi");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Form(
          key: _formkey,
          onChanged: validate,
          child: Column(
            children: [
              const SizedBox(
                height: 250,
              ),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (value) {
                  if (value!.contains(RegExp('r[a-z]')) && value.isEmpty) {
                    return "enter at least one lowercase";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator: (value) {
                    if (value!.contains(RegExp('r[0-9]'))) {
                      return "enter at least one number";
                    } else {
                      return null;
                    }
                  }),
              const SizedBox(
                height: 30,
              ),
              MaterialButton(
                color: Colors.purple,
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    print("hi");
                  }
                },
                child: const Text(
                  "submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
