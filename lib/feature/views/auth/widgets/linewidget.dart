import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({
    super.key,
    required this.size,
    required this.color1,
    required this.color2,
  });

  final Size size;
  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: size.width / 3,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color1, color2],
            ),
            borderRadius: BorderRadius.circular(30)),
        child: const Padding(
          padding: EdgeInsets.all(
            0.7,
          ),
        ),
      ),
    );
  }
}
