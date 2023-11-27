import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/work_niche.dart';

import '../components/buttons.dart';
import '../components/container_buttons.dart';
import '../components/the_txt_field.dart';

class registerForm extends StatefulWidget {
  const registerForm({
    super.key,
  });

  @override
  State<registerForm> createState() => _registerFormState();
}

class _registerFormState extends State<registerForm> {
  // the text editing controller
  final _fullnameController = TextEditingController();
  //final _ageController = TextEditingController();
  final _genderController = TextEditingController();
  final _medicalController = TextEditingController();
  final _phoneController = TextEditingController();

  //final _workExamplesController = TextEditingController();

  @override
  void dispose() {
    _fullnameController.dispose();
    //_ageController.dispose();
    _genderController.dispose();
    _medicalController.dispose();
    _phoneController.dispose();
    //_workExamplesController.dispose();
    super.dispose();
  }

  //add worker data
  void registerWrkerData() async {
    await addWorkerDetails(
      _fullnameController.text.trim(),
      // _ageController.text.trim() as DateTime,
      _genderController.text.trim(),
      _medicalController.text.trim(),
      _phoneController.text.trim(),
      //_workExamplesController.text.trim() as File,
    );
  }

  Future addWorkerDetails(
    String fullname,
    //DateTime age,
    String gender,
    String medecalProb,
    String phoneNumbber,
    //File criminalRecirds,
  ) async {
    await FirebaseFirestore.instance.collection("workers").add({
      'fullname': fullname,
      // 'age': age,
      'gender': gender,
      'medical problems': medecalProb,
      'phone number': phoneNumbber,
      //'work exaples': criminalRecirds,
    });
  }

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
  late DateTime _dateTime;
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

  // create criminal records variables
  Color _Colr = Colors.black;
  Color? _fontColor2 = Colors.grey[500];
  bool isLoading = true;
  FilePickerResult? result;
  String? _fileName = 'Uploud your Criminal Records!';
  PlatformFile? pickedFile;
  File? fileToDisplay;

  //filepicker method criminal records
  void openFileCriminal() async {
    try {
      setState(() {
        isLoading = true;
      });

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );
      if (result != null) {
        _fileName = result!.files.first.name;
        pickedFile = result!.files.first;
        fileToDisplay = File(pickedFile!.path.toString());
        setState(
          () {
            _Colr = const Color.fromARGB(255, 17, 13, 236);
            _fontColor2 = const Color.fromARGB(255, 17, 13, 236);
          },
        );
      } else {
        setState(
          () {
            isLoading = false;
            _Colr = const Color.fromARGB(255, 255, 0, 21);
            _fontColor2 = const Color.fromARGB(255, 255, 0, 21);
          },
        );
      }
    } catch (e) {
      print(e);
    }
  }

  //firebase pick file
  UploadTask? upLoadTask;
  Future uploadCriminalFile() async {
    try {
      final criminalRecirds = File(pickedFile!.name);
      final criminalRecirdsPath = 'worker files/${pickedFile!.name}';
      final ref = FirebaseStorage.instance.ref().child(criminalRecirdsPath);
      ref.putFile(criminalRecirds);
    } catch (e) {
      print(e);
    }
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
                  height: 20,
                ),

                //app logo
                const Icon(
                  Icons.person,
                  size: 100,
                ),

                const SizedBox(
                  height: 20,
                ),

                // text of confirming ID
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text(
                    textAlign: TextAlign.center,
                    "We need to confirm you ID!, Please fill out your informations here",
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                //full name text field
                theTextField(
                  Controller: _fullnameController,
                  hintText: 'Enter your Full Name Please!',
                  hintTextColor: const Color.fromARGB(255, 184, 184, 184),
                  obscureText: false,
                  maxLines: 1,
                  minLines: 1,
                ),

                const SizedBox(
                  height: 10,
                ),

                //phone number text field
                theTextField(
                    Controller: _phoneController,
                    hintText: 'Enter your phone number Please!',
                    hintTextColor: const Color.fromARGB(255, 184, 184, 184),
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

                // gender and age picker
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

                const SizedBox(
                  height: 10,
                ),

                // age picker
                containerButtons(
                  hntTxt: 'Enter your date of birth',
                  click: _showBirthDate,
                  containerIcon: Icons.calendar_month,
                  color: _Color,
                  fontColor: _fontColor1!,
                ),

                const SizedBox(
                  height: 10,
                ),

                //medical text field
                theTextField(
                  Controller: _medicalController,
                  hintText: 'Discribe your midical problems!',
                  hintTextColor: const Color.fromARGB(255, 184, 184, 184),
                  obscureText: false,
                  maxLines: 5,
                  minLines: 1,
                ),

                const SizedBox(
                  height: 10,
                ),

                // criminal records file picker
                containerButtons(
                  hntTxt: _fileName.toString(),
                  click: () {
                    openFileCriminal();
                  },
                  containerIcon: Icons.file_copy,
                  color: _Colr,
                  fontColor: _fontColor2!,
                ),

                const SizedBox(
                  height: 60,
                ),

                // Next page button

                buttons(
                  onTap: () {
                    registerWrkerData();
                    uploadCriminalFile();
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const workForm()));
                  },
                  textButton: "Preceed",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
