import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final dynamic color;
  final dynamic textColor;
  final String label;
  const MyButton({
    super.key,
    required this.color,
    required this.textColor,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(1, 2),
            blurRadius: 5,
          ),
        ],
      ),
      child: Center(
        child: Text(
          label,
          style: TextStyle(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
