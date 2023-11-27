import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile/worker_profile.dart';
import 'package:flutter_application_1/screens/search_niche.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../components/buttons.dart';

class nicheAndArea extends StatefulWidget {
  const nicheAndArea({
    super.key,
  });

  @override
  State<nicheAndArea> createState() => _nicheAndAreaState();
}

class _nicheAndAreaState extends State<nicheAndArea> {
  // the text editing controller
  final _workNicheController = TextEditingController();

  @override
  void dispose() {
    _workNicheController.dispose();
    super.dispose();
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        //const Color.fromARGB(255, 2, 7, 61),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => const workerProfile()));
          },
          icon: const Icon(
            color: Colors.black,
            LineAwesomeIcons.angle_left,
          ),
        ),
        title: const Text(
          style: TextStyle(color: Colors.black),
          'Niche and Area working',
          textAlign: TextAlign.start,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),

                  // text " Almost there! Telle us whet you can do!"
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: SizedBox(
                      height: 20,
                    ),
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
                    //search for nwork niche
                    child: const seachNich(),
                  ),

                  // save work nich changes
                  saveChangesMethod(onPressed: () {}),

                  const SizedBox(
                    height: 20,
                  ),

                  //Working area
                  const myRadioButton(),

                  const SizedBox(
                    height: 20,
                  ),

                  //submit button
                  saveChangesMethod(onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TextButton saveChangesMethod({required void Function()? onPressed}) {
    return TextButton(onPressed: onPressed, child: const Text('Save Changes'));
  }
}
