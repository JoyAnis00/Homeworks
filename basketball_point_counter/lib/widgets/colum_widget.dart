import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ColumWidget extends StatefulWidget {
  final String teamName;
  int teamScore;
  ColumWidget({
    super.key,
    required this.teamName,
    required this.teamScore,
  });

  @override
  State<ColumWidget> createState() => _ColumWidgetState();
}

class _ColumWidgetState extends State<ColumWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.teamName,
            style: TextStyle(
              fontSize: 50,
            )),
        SizedBox(height: 10), // بدال Spacer
        Text(widget.teamScore.toString(),
            style: TextStyle(
              fontSize: 160,
            )),
        SizedBox(height: 10), // بدال Spacer
        ElevatedButtonSection(
            onPressed: () {
              setState(() {
                widget.teamScore += 1;
              });
            },
            text: 'Add 1 Points'),
        SizedBox(height: 10), // بدال Spacer
        ElevatedButtonSection(
            onPressed: () {
              setState(() {
                widget.teamScore += 2;
              });
            },
            text: 'Add 2 Points'),
        SizedBox(height: 10), // بدال Spacer
        ElevatedButtonSection(
            onPressed: () {
              setState(() {
                widget.teamScore += 3;
              });
            },
            text: 'Add 3 Points'),

        SizedBox(height: 10),
      ],
    );
  }
}

class ElevatedButtonSection extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  const ElevatedButtonSection(
      {super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepOrangeAccent,
      ),
      onPressed: onPressed,
      child: Text(text),
    );
  }
}
