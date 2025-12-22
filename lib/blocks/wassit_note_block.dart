import 'package:flutter/material.dart';

class WassitNoteBlock extends StatelessWidget {
  const WassitNoteBlock({super.key});

  static const String _legalNote =
      'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TEXTE (RTL)
          Expanded(
            child: Text(
              _legalNote,
              textAlign: TextAlign.right,
              style: const TextStyle(
                fontSize: 10,
                height: 1.5,
                color: Colors.black87,
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// 🔹 ICÔNES
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
