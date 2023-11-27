import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';
import 'package:flutter_application_1/screens/profile/worker_profile.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

import '../../components/container_buttons.dart';
import '../../components/the_txt_field.dart';

class updateProfileScreen extends StatefulWidget {
  updateProfileScreen({super.key});

  @override
  State<updateProfileScreen> createState() => _updateProfileScreenState();
}

class _updateProfileScreenState extends State<updateProfileScreen> {
  // the text editing controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullnameController = TextEditingController();
  final ageController = TextEditingController();
  final genderController = TextEditingController();
  final _phoneController = TextEditingController();
  bool obscureText = true;

  //create gender picker variables
  final items = <String>['male', 'female'];
  String? val = 'male';
  Color _pickGenderColor = Colors.black;

  //gende drop down button method
  DropdownMenuItem buildMenuItem(String item) {
    return DropdownMenuItem<String>(
      value: item,
      child: Text(
        item,
        style: const TextStyle(
          fontSize: 20,
        ),
      ),
    );
  }

  // create date time variable
  DateTime _dateTime = DateTime(2003);
  Color _Color = Colors.black;
  Color? _fontColor1 = Colors.grey[500];

  // date picker method
  void _showBirthDate() async {
    showDatePicker(
      context: context,
      initialDate: DateTime(2003),
      firstDate: DateTime(1900),
      lastDate: DateTime(2005),
    ).then((val) {
      setState(() {
        _dateTime = val!;
        _Color = const Color.fromARGB(255, 17, 13, 236);
        _fontColor1 = const Color.fromARGB(255, 17, 13, 236);
      });
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
          'Edit Profile',
          textAlign: TextAlign.start,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              Stack(
                children: [
                  SizedBox(
                    width: 100,
                    height: 100,

                    //profile picture
                    child: GestureDetector(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(60),
                        child: const Image(
                          image: AssetImage(
                            'lib/images/profile.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.blue.withOpacity(0.1),
                      ),
                      child: const Icon(
                        LineAwesomeIcons.alternate_pencil,
                        color: Colors.black,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              //personal info form field

              //full name editing
              theTextField(
                Controller: fullnameController,
                hintText: 'Test Test',
                hintTextColor: Colors.black,
                obscureText: false,
                maxLines: 1,
                minLines: 1,
              ),

              const SizedBox(height: 10),

              //phone number text field
              theTextField(
                  Controller: _phoneController,
                  hintText: '+213 555 55 55 55',
                  hintTextColor: Colors.black,
                  obscureText: false,
                  maxLines: 1,
                  minLines: 1,
                  keyboard: TextInputType.phone,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {});
                    },
                    child: const Icon(Icons.confirmation_num_rounded),
                  )),

              const SizedBox(
                height: 10,
              ),

              //email editing
              theTextField(
                Controller: emailController,
                hintText: 'test11@gmail.com',
                hintTextColor: Colors.black,
                obscureText: false,
                maxLines: 1,
                minLines: 1,
              ),

              const SizedBox(height: 10),

              //password editing
              theTextField(
                Controller: passwordController,
                hintText: '**********',
                hintTextColor: Colors.black,
                obscureText: obscureText,
                maxLines: 1,
                minLines: 1,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      obscureText = !obscureText;
                    });
                  },
                  child: Icon(
                      obscureText ? Icons.visibility : Icons.visibility_off),
                ),
              ),

              const SizedBox(height: 10),

              //age editing
              containerButtons(
                hntTxt: 'Enter your date of birth',
                click: _showBirthDate,
                containerIcon: Icons.calendar_month,
                color: _Color,
                fontColor: _fontColor1!,
              ),

              const SizedBox(height: 10),

              //gender editing
              genderDropDown(
                vlue: val,
                itm: items.map(buildMenuItem).toList(),
                onChanged: (value) => setState(
                  () {
                    val = value as String?;
                    _pickGenderColor = const Color.fromARGB(255, 17, 13, 236);
                  },
                ),
                dropDownColor: _pickGenderColor,
              ),

              const SizedBox(height: 40),

              //id number
              const Text(
                'ID:1276576467GFR',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),

              const SizedBox(height: 60),

              //id number
              buttons(
                onTap: () {},
                textButton: 'Save Changes',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
