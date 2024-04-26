import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:raj_app/home.dart';
import 'package:raj_app/verify.dart';
import 'package:raj_app/phone.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'phone',
      routes: {
        'phone': (context) => const MyPhone(),
        'verify': (context) => const MyVerify(),
        'home': (context) => const HomePage(),
      },
    ),
  );
}
