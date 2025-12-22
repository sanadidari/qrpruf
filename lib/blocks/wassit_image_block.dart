import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'wassit_image_live_block.dart';
import 'wassit_image_upload_block.dart';

class WassitImageBlock extends StatelessWidget {
  final VoidCallback onValidate;

  const WassitImageBlock({
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
          /// 🔹 HEADER — IMAGE
          Text(
            'لقطة صورة',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 IMAGE LIVE (statique)
          const WassitImageLiveBlock(),

          const SizedBox(height: 12),

          /// 🔹 IMAGE UPLOAD (statique)
          const WassitImageUploadBlock(),

          const Spacer(),

          /// 🔹 VALIDATION DU MOYEN IMAGE
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
                'حفظ الصورة',
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
