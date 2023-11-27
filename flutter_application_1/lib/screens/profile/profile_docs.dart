import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/profile/worker_profile.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class profileDocs extends StatefulWidget {
  profileDocs({
    super.key,
  });

  @override
  State<profileDocs> createState() => _profileDocsState();
}

class _profileDocsState extends State<profileDocs> {
  //this is for setting a timer for the color changing in the container

  //uploaded and not aproved

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
          'Documents',
          textAlign: TextAlign.start,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            const SizedBox(height: 50),

            //Criminal Records
            filePicker(
              mainText: 'Criminal Records',
              subText: 'Approved',
              color: const Color.fromARGB(255, 0, 197, 49),
            ),
            const SizedBox(
              height: 20,
            ),

            //Work Examples
            filePicker(
              mainText: 'Work Examples',
              subText: 'Approved',
              color: const Color.fromARGB(255, 0, 197, 49),
            ),
          ],
        ),
      ),
    );
  }

  Container filePicker({
    required mainText,
    required subText,
    required color,
    //required double width,
  }) {
    return Container(
      width: 400,
      height: 70,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                mainText,
                style: TextStyle(
                  fontSize: 16,
                  color: color,
                ),
              ),
              Text(
                subText,
                style: TextStyle(
                  fontSize: 13,
                  color: color,
                ),
              ),
            ],
          ),
          Icon(
            LineAwesomeIcons.check_circle_1,
            size: 35,
            color: color,
          ),
        ],
      ),
    );
  }
}
