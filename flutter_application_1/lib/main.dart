// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/auth/auth_page.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/screens/profile/profile_docs.dart';
import 'package:flutter_application_1/screens/profile/worker_profile.dart';
import 'package:flutter_application_1/screens/regestration_form.dart';
import 'package:flutter_application_1/screens/search_niche.dart';
import 'package:flutter_application_1/screens/work_niche.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'testmode',
      home: authPage(),
      //home: Scaffold(
      // body: Center(
      // child: Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      //children: [
      //        IconButton(
      //        onPressed: (){},
      //      icon: Icon(Icons.person),
      //  ),
      // Text(
      // 'data',
      //style: TextStyle(
      //color: Colors.black,
      //),
      //),
      //SizedBox(
      // height: 40,
      //),
      //Text(
      //'data',
      //style: TextStyle(
      //color: Colors.black,
      //),
      //),
      //],
      //),
      //),
      //),
    );
  }
}
