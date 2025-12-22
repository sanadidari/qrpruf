import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitAudioLiveBlock extends StatelessWidget {
  const WassitAudioLiveBlock({super.key});

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
            'تسجيل صوتي مباشر',
            style: GoogleFonts.cairo(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'ابدأ تسجيل الصوت مباشرة من جهازك.',
            style: GoogleFonts.cairo(
              fontSize: 12,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: double.infinity,
            child: OutlinedButton(
              onPressed: () {
                // 🔒 logique live audio (plus tard)
              },
              child: const Text('بدء التسجيل'),
            ),
          ),
        ],
      ),
    );
  }
}
