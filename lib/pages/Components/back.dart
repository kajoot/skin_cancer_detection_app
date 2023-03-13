import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skin_cancer_detection_app/constants.dart';

class Back extends StatelessWidget {
  const Back({
    super.key,
    required this.maincontent,
    required this.bottemimage,
    required this.topimage,
    required this.centerimage,
    required this.size,
    required this.title,
  });

  final String title;
  final Size size ;
  final Widget topimage , bottemimage,centerimage , maincontent;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        children: [
          topimage,
          bottemimage,
          Positioned(
            top: 120,
            child: Column(
              children: [
                Text(
                  title,
                  style: GoogleFonts.libreBaskerville(fontSize: 20,color: blacktext),
                ),
                Center(
                  child: centerimage
                ),
                maincontent
              ],
            ),
          )
        ],
      ),
    );
  }
}

