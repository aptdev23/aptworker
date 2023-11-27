import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/search_niche.dart';

import '../components/buttons.dart';
import '../components/container_buttons.dart';

class workForm extends StatefulWidget {
  const workForm({
    super.key,
  });

  @override
  State<workForm> createState() => _workFormState();
}

class _workFormState extends State<workForm> {
  final _criminalController = TextEditingController();
  // the text editing controller
  final _workNicheController = TextEditingController();

  @override
  void dispose() {
    _workNicheController.dispose();
    _criminalController.dispose();
    super.dispose();
  }

  //next page function
  Future nextPage() async {
    addWorkerDetails(_workNicheController.text.trim());
  }

  Future addWorkerDetails(
    String workniche,
  ) async {
    await FirebaseFirestore.instance.collection('workers').add({
      'work niche': workniche,
    });
  }

  //create work examples variables
  Color _Clor = Colors.black;
  Color? _fontColor3 = Colors.grey[500];

  //filepicker method work examples
  void openFileWork() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    if (resultFile != null) {
      setState(
        () {
          _Clor = const Color.fromARGB(255, 17, 13, 236);
          _fontColor3 = const Color.fromARGB(255, 17, 13, 236);
        },
      );
    } else if (resultFile == null) {
      setState(
        () {
          _Clor = const Color.fromARGB(255, 255, 0, 21);
          ;
          _fontColor3 = const Color.fromARGB(255, 255, 0, 21);
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),

                  //app logo
                  const Icon(
                    Icons.person,
                    size: 100,
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // text " Almost there! Telle us whet you can do!"
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "Almost there! Telle us whet you can do!",
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  // IMAGE EXAMPLES PICKER
                  containerButtons(
                    hntTxt: 'Uploud your Work Examples!',
                    click: () {
                      openFileWork();
                    },
                    containerIcon: Icons.image,
                    color: _Clor,
                    fontColor: _fontColor3!,
                  ),

                  const SizedBox(
                    height: 10,
                  ),

                  //work niche picker
                  Container(
                    height: 300,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                      //color: Colors.white54,
                    ),
                    child: seachNich(),
                  ),

                  const SizedBox(
                    height: 20,
                  ),

                  //Working area
                  const myRadioButton(),

                  const SizedBox(
                    height: 20,
                  ),

                  //submit button
                  buttons(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const homePage()));
                    },
                    textButton: 'Submit',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
