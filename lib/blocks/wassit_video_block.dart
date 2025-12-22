import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'wassit_video_live_block.dart';
import 'wassit_video_upload_block.dart';

class WassitVideoBlock extends StatelessWidget {
  final VoidCallback onValidate;

  const WassitVideoBlock({
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
          /// 🔹 HEADER VIDEO
          Text(
            'شريط فيديو',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 LIVE VIDEO
          const WassitVideoLiveBlock(),

          const SizedBox(height: 12),

          /// 🔹 UPLOAD VIDEO
          const WassitVideoUploadBlock(),

          const Spacer(),

          /// 🔹 VALIDATION VIDEO
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onValidate,
              child: const Text('حفظ الفيديو'),
            ),
          ),
        ],
      ),
    );
  }
}
