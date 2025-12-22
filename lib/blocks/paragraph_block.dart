import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class ParagraphBlock extends StatelessWidget {
  final String text;

  const ParagraphBlock(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      /// 🔧 MARGE HORIZONTALE AJUSTÉE (PLUS FINE)
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
      child: AutoSizeText(
        text,
        textAlign: TextAlign.right,
        maxLines: 2,
        minFontSize: 10,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.cairo(
          fontSize: 13,
          height: 1.9,
        ),
      ),
    );
  }
}
