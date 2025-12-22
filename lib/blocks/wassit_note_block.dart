import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:google_fonts/google_fonts.dart';

class NoteBlock extends StatelessWidget {
  /// ⚠️ Paramètre conservé uniquement pour compatibilité
  final String? _unusedText;

  const NoteBlock([this._unusedText, Key? key]) : super(key: key);

  static const String _legalNote =
      'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام، ';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TEXTE À DROITE (RTL)
          Expanded(
            child: AutoSizeText(
              _legalNote,
              textAlign: TextAlign.right,
              minFontSize: 8,
              style: GoogleFonts.cairo(
                fontSize: 10,
                height: 1.5,
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// 🔹 ICÔNES À GAUCHE
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
