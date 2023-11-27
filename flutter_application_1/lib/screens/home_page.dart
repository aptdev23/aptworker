import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/screens/profile/worker_profile.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  // sign worker out method
  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: signUserOut,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const Text("home page"),
            SizedBox(height: 100),
            buttons(
              textButton: 'profile',
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const workerProfile()));
              },
            )
          ],
        ),
      ),
    );
  }
}
