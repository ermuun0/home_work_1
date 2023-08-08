import 'package:flutter/material.dart';
class GradientLetter extends StatelessWidget{
  final String letter;
  final double width;
  final double height;
  final double fontSize;
  final double hEight;
  final double borderRadius;
  final double borderradius;

  const GradientLetter(this.letter, this.height, this.width, this.fontSize, this.hEight, this.borderRadius, this.borderradius, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color:  Color(0xFFFF9002)

      ),
      child: FractionallySizedBox(
        widthFactor: 2/3,
        heightFactor: 2/3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderradius),
              gradient: const LinearGradient(
                  colors: [Color.fromRGBO(255,144,2,0), Color(0xFFE48000)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [-0.025, 1.6875],
                  transform: GradientRotation(180))

          ),
          child: Center(
            child: Text(
              letter,
              style: TextStyle(fontSize: fontSize, height: hEight, color: Colors.white),
            ),
          ),
        ),
      ),

    );
  }

}