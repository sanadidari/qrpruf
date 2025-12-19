import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleBlock extends StatelessWidget {
  final String title;
  final String subtitle;

  const TitleBlock({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
      padding: const EdgeInsets.symmetric(vertical: 14),
      color: const Color(0xFFEBF4F3),
      child: Column(
        children: [
          AutoSizeText(
            title,
            maxLines: 1,
            minFontSize: 16,
            style: GoogleFonts.cairo(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF0C8172),
            ),
          ),
          AutoSizeText(
            subtitle,
            maxLines: 1,
            minFontSize: 14,
            style: GoogleFonts.cairo(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF0C8172),
            ),
          ),
        ],
      ),
    );
  }
}
