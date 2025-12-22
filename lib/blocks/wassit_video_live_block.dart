import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitVideoLiveBlock extends StatefulWidget {
  const WassitVideoLiveBlock({super.key});

  @override
  State<WassitVideoLiveBlock> createState() => _WassitVideoLiveBlockState();
}

class _WassitVideoLiveBlockState extends State<WassitVideoLiveBlock> {
  bool _hasRecordedVideo = false;

  void _simulateRecordVideo() {
    setState(() {
      _hasRecordedVideo = true;
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
          color: _hasRecordedVideo
              ? const Color(0xFF0C8172)
              : const Color(0xFF0C8172).withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE LIVE
          Text(
            'تسجيل فيديو مباشر',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          /// 🔹 DESCRIPTION
          Text(
            _hasRecordedVideo
                ? 'تم تسجيل فيديو.'
                : 'يمكنك تسجيل فيديو مباشر باستخدام كاميرا الجهاز.',
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
            child: ElevatedButton.icon(
              onPressed: _simulateRecordVideo,
              icon: Icon(
                _hasRecordedVideo
                    ? Icons.check_circle
                    : Icons.videocam,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _hasRecordedVideo
                    ? const Color(0xFF0C8172)
                    : const Color(0xFF0C8172),
                foregroundColor: Colors.white,
              ),
              label: Text(
                _hasRecordedVideo
                    ? 'تم تسجيل الفيديو'
                    : 'بدء تسجيل الفيديو',
                style: GoogleFonts.cairo(
                  fontSize: 13,
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
