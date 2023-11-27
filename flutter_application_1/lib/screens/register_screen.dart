// ignore_for_file: unused_import

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/components/container_buttons.dart';
import 'package:flutter_application_1/components/the_txt_field.dart';
import 'package:flutter_application_1/screens/regestration_form.dart';
import 'package:flutter_application_1/services/auth-services.dart';
import 'package:provider/provider.dart';

class registerWorker extends StatefulWidget {
  final Function()? onTop;

  registerWorker({super.key, required this.onTop});

  @override
  State<registerWorker> createState() => _registerWorkerState();
}

class _registerWorkerState extends State<registerWorker> {
  // the text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool obscureText = true;

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  // sign up worker method
  void signWorkerUp() async {
    // showing a laoding circle
    showDialog(
        context: context,
        builder: (context) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
    // try sign up
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      // pop in the loading circul
      Navigator.pop(context);
    } on FirebaseAuthException catch (e) {
      // pop out the loading circul
      Navigator.pop(context);
      // show error messeges
      showErorMsg(e.code);
    }
  }

  // wrong email and password messege
  void showErorMsg(String messege) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(
              messege,
              style: const TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              textAlign: TextAlign.center,
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),

                //app logo
                const Icon(
                  Icons.lock,
                  size: 100,
                ),

                const SizedBox(
                  height: 50,
                ),

                //welcome text "welcome to Apt DZ workers area we wich you all secsess"
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    'welcome to Apt DZ workers area we wich you all success ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                //email
                theTextField(
                  Controller: emailController,
                  hintText: 'admin@aptstuff.ml',
                  hintTextColor: const Color.fromARGB(255, 184, 184, 184),
                  obscureText: false,
                  maxLines: 1,
                  minLines: 1,
                ),

                const SizedBox(
                  height: 10,
                ),

                //password
                theTextField(
                    Controller: passwordController,
                    hintText: 'password',
                    hintTextColor: const Color.fromARGB(255, 184, 184, 184),
                    obscureText: obscureText,
                    maxLines: 1,
                    minLines: 1,
                    suffixIcon: GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: Icon(obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    )),

                const SizedBox(
                  height: 61,
                ),

                //signin button
                buttons(
                  onTap: signWorkerUp,
                  textButton: "Let's start",
                ),

                const SizedBox(
                  height: 10,
                ),

                // Already have an Account?
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //not a member text
                    const Text(
                      'Already have an Account?',
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //register now text button
                    GestureDetector(
                      onTap: widget.onTop,
                      child: const Text(
                        'Login now!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(
                            255,
                            34,
                            102,
                            247,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 40,
                ),

                // or contunue with ggogle or facebook
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          'Or contuenue with!',
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 50,
                ),

                // google and facebook signin
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //google signin
                    squareTile(
                      onTop: () {},
                      //onTop: AuthService().signInWithGoole(),
                      imagePath: 'lib/images/google.png',
                    ),

                    const SizedBox(
                      width: 20,
                    ),

                    // facebook signin
                    squareTile(
                        onTop: () {}, imagePath: 'lib/images/facebook.png')
                  ],
                ),

                const SizedBox(
                  height: 70,
                ),

                // copyright and version
                const Text('© 2023 Apt DZ Inc. All Rights Reserved.')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
