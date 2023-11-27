// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class squareTile extends StatelessWidget {
  final String imagePath;
  final Function()? onTop;

  const squareTile({super.key, required this.imagePath, required this.onTop});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200],
        ),
        child: Image.asset(
          imagePath,
          height: 40,
        ),
      ),
    );
  }
}

//containerbuttons for birthdate / criminal records / work examples
class containerButtons extends StatelessWidget {
  final Function()? click;
  final String hntTxt;
  final IconData? containerIcon;
  final Color color;
  final Color fontColor;

  const containerButtons(
      {super.key,
      this.click,
      required this.hntTxt,
      required this.containerIcon,
      required this.color,
      required this.fontColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: GestureDetector(
        onTap: click,
        child: Container(
          width: 400,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(5),
            color: Colors.white54,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hntTxt,
                style: TextStyle(
                  color: fontColor,
                ),
              ),
              Icon(
                size: 40,
                color: color,
                containerIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Buttons for gender drop down
class genderDropDown extends StatelessWidget {
  final List<DropdownMenuItem<dynamic>>? itm;
  final Object? vlue;
  final Function(Object?)? onChanged;
  final Color dropDownColor;

  const genderDropDown({
    super.key,
    this.onChanged,
    this.itm,
    this.vlue,
    required this.dropDownColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(5),
          color: Colors.white54,
        ),
        child: Center(
          child: DropdownButtonHideUnderline(
            child: newMethod(),
          ),
        ),
      ),
    );
  }

  DropdownButton<dynamic> newMethod() {
    return DropdownButton(
      style: TextStyle(
        color: dropDownColor,
      ),
      isExpanded: true,
      value: vlue,
      items: itm,
      onChanged: onChanged,
    );
  }
}
