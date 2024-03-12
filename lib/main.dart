import "package:flutter/material.dart";
import 'package:flutter_riverpod/flutter_riverpod.dart';

final countProvider = Provider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(child: myAPP()));
}

class myAPP extends StatelessWidget {
  const myAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends ConsumerWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int count = ref.watch(countProvider);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("home page"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "you have click$count",
              style: const TextStyle(fontSize: (20), color: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
