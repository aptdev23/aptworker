import 'package:flutter/material.dart';

class termsList extends StatelessWidget {
  final String title;
  final List<Widget> children;
  const termsList({
    super.key,
    required this.title,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      expandedAlignment: Alignment.topLeft,
      childrenPadding: const EdgeInsets.symmetric(vertical: 30),
      title: Text(
        title,
        style: const TextStyle(fontSize: 27),
      ),
      children: children,
    );
  }
}

class childrenTexts extends StatelessWidget {
  final String content;
  const childrenTexts({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(fontSize: 16),
    );
  }
}
