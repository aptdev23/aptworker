import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home_page.dart';
import 'package:flutter_application_1/screens/profile/profile_docs.dart';
import 'package:flutter_application_1/screens/profile/terms_and_policy.dart';
import 'package:flutter_application_1/screens/profile/update_worker_profile.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../components/profile_buttons.dart';
import 'nich_area.dart';

class workerProfile extends StatelessWidget {
  const workerProfile({super.key});
  // sign worker out method
  void signWorkerOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      //const Color.fromARGB(255, 2, 7, 61),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey[300],
        //const Color.fromARGB(255, 2, 7, 61),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute<void>(
                    builder: (BuildContext context) => const homePage()));
          },
          icon: const Icon(
            color: Colors.black,
            LineAwesomeIcons.angle_left,
          ),
        ),
        title: const Text(
          style: TextStyle(color: Colors.black),
          'Profile',
          textAlign: TextAlign.start,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsetsDirectional.all(14),
          child: Column(
            children: [
              SizedBox(
                width: 100,
                height: 100,

                //profile picture
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: const Image(
                    image: AssetImage(
                      'lib/images/profile.png',
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // full name
              const Text(
                'Test Test',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  //Colors.white,
                ),
              ),

              const SizedBox(height: 10),

              //id number
              const Text(
                'ID:1276576467GFR',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 35),

              // job requests counter
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //totatl requests
                  counterButton(
                    counterText: 'Requests',
                    counter: '1549',
                  ),

                  SizedBox(width: 15),

                  //complated requests
                  counterButton(
                    counterText: 'Complated',
                    counter: '149',
                  ),

                  SizedBox(width: 15),

                  //canceled requests
                  counterButton(
                    counterText: 'Canceled',
                    counter: '1342',
                  ),
                ],
              ),
              const SizedBox(height: 35),
              const Divider(), //color: Color.fromARGB(255, 0, 40, 73)),
              const SizedBox(height: 35),

              //settings
              //edit profile
              profileMenu(
                profileMenuTitle: 'Edit Profile',
                profileMenuIcon: Icons.person,
                profileMenuClick: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              updateProfileScreen()));
                },
                endIcon: true,
              ),
              const SizedBox(height: 20),

              //niche and area
              profileMenu(
                profileMenuTitle: 'Niche and Area',
                profileMenuIcon: LineAwesomeIcons.map,
                profileMenuClick: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const nicheAndArea()));
                },
                endIcon: true,
              ),
              const SizedBox(height: 20),

              //files and documents
              profileMenu(
                profileMenuTitle: 'Documents',
                profileMenuIcon: LineAwesomeIcons.file,
                profileMenuClick: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) => profileDocs()));
                },
                endIcon: true,
              ),
              const SizedBox(height: 20),

              const Divider(), //color: Color.fromARGB(255, 0, 40, 73)),

              const SizedBox(height: 20),

              //terms and policy
              profileMenu(
                profileMenuTitle: 'Terms and Policy',
                profileMenuIcon: Icons.policy,
                profileMenuClick: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const trmsAndPolicy()));
                },
                endIcon: true,
              ),
              const SizedBox(height: 20),

              //log out
              profileMenu(
                profileMenuTitle: 'Log Out',
                profileMenuIcon: Icons.logout_outlined,
                profileMenuClick: signWorkerOut,
                endIcon: false,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
