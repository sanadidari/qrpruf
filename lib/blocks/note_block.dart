import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteBlock extends StatelessWidget {
  final String text;

  const NoteBlock(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: AutoSizeText(
              text,
              textAlign: TextAlign.right,
              maxLines: 3,
              minFontSize: 7,
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.cairo(
                fontSize: 9,
                height: 1.4,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            children: [
              Image.asset('assets/images/whatsy.png', width: 22),
              const SizedBox(height: 6),
              Image.asset('assets/images/helpy.png', width: 22),
            ],
          ),
        ],
      ),
    );
  }
}
