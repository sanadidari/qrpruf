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
          /// 🔹 HEADER — TRAJET
          Text(
            'تسجيل المسار',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 TRAJET LIVE (statique)
          const WassitTrajetLiveBlock(),

          const Spacer(),

          /// 🔹 VALIDATION DU MOYEN TRAJET
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onValidate,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0C8172),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text(
                'حفظ المسار',
                style: GoogleFonts.cairo(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
