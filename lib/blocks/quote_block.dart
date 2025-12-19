import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class QuoteBlock extends StatelessWidget {
  final String text;

  const QuoteBlock(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 26),
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFFA7D6CF)),
        borderRadius: BorderRadius.circular(14),
      ),
      child: AutoSizeText(
        text,
        maxLines: 1,
        minFontSize: 10,
        style: GoogleFonts.cairo(
          fontSize: 14,
          fontWeight: FontWeight.w600,
          color: const Color(0xFF0C8172),
        ),
      ),
    );
  }
}
