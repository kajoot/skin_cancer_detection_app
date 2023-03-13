import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class StadiumButtom extends StatelessWidget {
  const StadiumButtom({
    super.key,
    required this.text,
    required this.textcolor,
    required this.bgcolor,
    required this.size,
    required this.function,
  });
  final VoidCallback function;
  final Size size;
  final String text;
  final Color bgcolor,textcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(50),
      ),
      width: size.width * 0.7,
      child: TextButton(
          onPressed:function,
          child: Text(
            text,
            style: GoogleFonts.inter(
                color: textcolor,
          )),
    ));
  }
}
