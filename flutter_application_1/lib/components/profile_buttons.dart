import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

//counter buttons
class counterButton extends StatelessWidget {
  final String counterText;
  final String counter;

  const counterButton(
      {super.key, required this.counterText, required this.counter});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(counter,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.black,
              //Colors.white,
            )),
        const SizedBox(
          height: 5,
        ),
        Text(counterText,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black,
              //Colors.white,
            )),
      ],
    );
  }
}

//counter buttons
class profileMenu extends StatelessWidget {
  final String profileMenuTitle;
  final IconData profileMenuIcon;
  final VoidCallback profileMenuClick;
  final bool endIcon;

  const profileMenu({
    super.key,
    required this.profileMenuTitle,
    required this.profileMenuIcon,
    required this.profileMenuClick,
    required this.endIcon,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: profileMenuClick,
      leading: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.grey.withOpacity(0.1),
        ),
        child:
            Icon(profileMenuIcon, color: const Color.fromARGB(255, 3, 60, 107)
                //Colors.lightBlueAccent,
                ),
      ),
      title: Text(
        profileMenuTitle,
        // style: const TextStyle(
        //color: //Colors.white,
        //),
      ),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(
                LineAwesomeIcons.angle_right,
                color: Colors.grey,
              ),
            )
          : null,
    );
  }
}
