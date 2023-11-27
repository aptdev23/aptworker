import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/regestration_form.dart';
import 'package:flutter_application_1/screens/toggle_secreen.dart';

class authPage extends StatelessWidget {
  const authPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // is worker loged in
          if (snapshot.hasData) {
            return //const homePage();
                const registerForm();
          }
          // is worker not loged in
          else {
            return const toggleSecreen();
          }
        },
      ),
    );
  }
}
