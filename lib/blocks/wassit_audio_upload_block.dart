import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitAudioUploadBlock extends StatelessWidget {
  const WassitAudioUploadBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE UPLOAD
          Text(
            'رفع ملف صوتي',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          /// 🔹 DESCRIPTION
          Text(
            'يمكنك اختيار ملف صوتي محفوظ مسبقًا على جهازك.',
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
                Icons.upload_file,
                size: 18,
                color: Colors.grey,
              ),
              const SizedBox(width: 6),
              Text(
                'اختيار ملف صوتي (غير مفعل بعد)',
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
