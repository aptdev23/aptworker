import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/screens/register_screen.dart';

class toggleSecreen extends StatefulWidget {
  const toggleSecreen({super.key});

  @override
  State<toggleSecreen> createState() => _toggleSecreenState();
}

class _toggleSecreenState extends State<toggleSecreen> {
  // initially sow login screen
  bool showLoginScreen = true;

  // toggle between login and register pages
  void toggleScreens() {
    setState(() {
      showLoginScreen = !showLoginScreen;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginScreen) {
      return loginworker(
        onTop: toggleScreens,
      );
    } else {
      return registerWorker(
        onTop: toggleScreens,
      );
    }
  }
}
