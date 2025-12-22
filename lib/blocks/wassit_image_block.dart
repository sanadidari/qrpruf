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
          /// 🔹 HEADER IMAGE
          Text(
            'لقطة صورة',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 LIVE IMAGE
          const WassitImageLiveBlock(),

          const SizedBox(height: 12),

          /// 🔹 UPLOAD IMAGE
          const WassitImageUploadBlock(),

          const Spacer(),

          /// 🔹 VALIDATION IMAGE
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onValidate,
              child: const Text('حفظ الصورة'),
            ),
          ),
        ],
      ),
    );
  }
}
