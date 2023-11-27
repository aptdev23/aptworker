import 'package:flutter/material.dart';

//Buttons for rejistration ans next pages
class buttons extends StatelessWidget {
  final Function()? onTap;
  final String textButton;

  const buttons({
    super.key,
    this.onTap,
    required this.textButton,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 0, 4, 255),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            textButton,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

enum workArea { Around_50_km, Across_the_country }

class myRadioButton extends StatefulWidget {
  const myRadioButton({super.key});

  @override
  State<myRadioButton> createState() => _myRadioButtonState();
}

class _myRadioButtonState extends State<myRadioButton> {
  workArea? _workArea;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        children: [
          // for around 50Km
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white54,
              ),
              child: RadioListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                dense: true,
                tileColor: Colors.white12,
                contentPadding: const EdgeInsets.all(0),
                title: const Text("Around 50 km"),
                value: workArea.Around_50_km,
                groupValue: _workArea,
                onChanged: (val) {
                  setState(() {
                    _workArea = val;
                  });
                },
              ),
            ),
          ),

          const SizedBox(
            width: 10,
          ),

          //for accross the country
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white54,
              ),
              child: RadioListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                dense: true,
                tileColor: Colors.white12,
                contentPadding: const EdgeInsets.all(0),
                title: const Text("Across the country"),
                value: workArea.Across_the_country,
                groupValue: _workArea,
                onChanged: (val) {
                  setState(() {
                    _workArea = val;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
