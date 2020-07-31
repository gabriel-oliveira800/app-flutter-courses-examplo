import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final double height;
  final double radius;

  const CustomButton({
    this.label = 'Iniciar',
    this.height = 68,
    this.radius = 38,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: InkWell(
        onTap: () {},
        child: SizedBox(
          height: height,
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            color: Colors.black38,
            child: Center(
              child: Text(
                label,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
