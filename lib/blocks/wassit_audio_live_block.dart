import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitAudioLiveBlock extends StatelessWidget {
  const WassitAudioLiveBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: const Color(0xFF0C8172).withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE LIVE
          Text(
            'تسجيل صوتي مباشر',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          /// 🔹 DESCRIPTION
          Text(
            'يمكنك تسجيل مقطع صوتي مباشر باستخدام ميكروفون الجهاز.',
            style: GoogleFonts.cairo(
              fontSize: 12,
              height: 1.5,
              color: const Color(0xFF444444),
            ),
          ),

          const SizedBox(height: 10),

          /// 🔹 INDICATEUR STATIQUE
          Row(
            children: [
              const Icon(
                Icons.mic_none,
                size: 18,
                color: Color(0xFF0C8172),
              ),
              const SizedBox(width: 6),
              Text(
                'تسجيل مباشر (غير مفعل بعد)',
                style: GoogleFonts.cairo(
                  fontSize: 11,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
