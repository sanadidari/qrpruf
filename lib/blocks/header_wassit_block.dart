import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderWassitBlock extends StatelessWidget {
  const HeaderWassitBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 65,
      color: const Color(0xFFEBF4F3),
      alignment: Alignment.center,
      child: Text(
        'مرحلة جمع وسائل الإثبات',
        style: GoogleFonts.cairo(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: const Color(0xFF0C8172),
        ),
      ),
    );
  }
}
