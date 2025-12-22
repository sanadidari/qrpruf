import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitVideoUploadBlock extends StatefulWidget {
  const WassitVideoUploadBlock({super.key});

  @override
  State<WassitVideoUploadBlock> createState() =>
      _WassitVideoUploadBlockState();
}

class _WassitVideoUploadBlockState extends State<WassitVideoUploadBlock> {
  bool _hasSelectedVideo = false;

  void _simulatePickVideo() {
    setState(() {
      _hasSelectedVideo = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: _hasSelectedVideo
              ? const Color(0xFF0C8172)
              : Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE UPLOAD
          Text(
            'رفع فيديو',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          /// 🔹 DESCRIPTION
          Text(
            _hasSelectedVideo
                ? 'تم اختيار فيديو.'
                : 'اختر ملف فيديو محفوظ مسبقًا على جهازك.',
            style: GoogleFonts.cairo(
              fontSize: 12,
              height: 1.5,
              color: const Color(0xFF444444),
            ),
          ),

          const SizedBox(height: 12),

          /// 🔹 ACTION
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: _simulatePickVideo,
              icon: Icon(
                _hasSelectedVideo ? Icons.check_circle : Icons.video_file,
                color: _hasSelectedVideo
                    ? const Color(0xFF0C8172)
                    : Colors.grey,
              ),
              label: Text(
                _hasSelectedVideo ? 'تم اختيار الفيديو' : 'اختيار فيديو',
                style: GoogleFonts.cairo(
                  fontSize: 12,
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
