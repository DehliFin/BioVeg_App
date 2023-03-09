import 'package:flutter/material.dart';
import 'package:bio_veg/screens/HomeScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const FrontPage());
}

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bioveg",
      theme: ThemeData(
        primarySwatch: Colors.green,
        primaryColor: Colors.lightBlue,
      ),
      home: const HomeScreen(title: 'Bioveg'),
    );
  }
}
