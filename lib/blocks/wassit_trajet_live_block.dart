import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitTrajetLiveBlock extends StatelessWidget {
  const WassitTrajetLiveBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'تسجيل المسار مباشرة',
            style: GoogleFonts.cairo(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'ابدأ تسجيل المسار الجغرافي باستخدام نظام تحديد الموقع.',
            style: GoogleFonts.cairo(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // 🔒 démarrer trajet (plus tard)
                  },
                  child: const Text('بدء التسجيل'),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {
                    // 🔒 arrêter trajet (plus tard)
                  },
                  child: const Text('إيقاف'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
