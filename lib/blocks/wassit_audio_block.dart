import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'wassit_audio_live_block.dart';
import 'wassit_audio_upload_block.dart';

class WassitAudioBlock extends StatelessWidget {
  final VoidCallback onValidate;

  const WassitAudioBlock({
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
          /// 🔹 HEADER AUDIO
          Text(
            'مقطع صوتي',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 LIVE AUDIO
          const WassitAudioLiveBlock(),

          const SizedBox(height: 12),

          /// 🔹 UPLOAD AUDIO
          const WassitAudioUploadBlock(),

          const Spacer(),

          /// 🔹 VALIDATION AUDIO
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onValidate,
              child: const Text('حفظ الصوت'),
            ),
          ),
        ],
      ),
    );
  }
}
