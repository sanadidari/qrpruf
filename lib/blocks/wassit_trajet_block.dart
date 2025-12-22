import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'wassit_trajet_live_block.dart';

class WassitTrajetBlock extends StatelessWidget {
  final VoidCallback onValidate;

  const WassitTrajetBlock({
    super.key,
    required this.onValidate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 HEADER TRAJET
          Text(
            'تسجيل المسار',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 LIVE TRAJET
          const WassitTrajetLiveBlock(),

          const Spacer(),

          /// 🔹 VALIDATION TRAJET
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onValidate,
              child: const Text('حفظ المسار'),
            ),
          ),
        ],
      ),
    );
  }
}
