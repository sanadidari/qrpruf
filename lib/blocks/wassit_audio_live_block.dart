import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitAudioLiveBlock extends StatefulWidget {
  const WassitAudioLiveBlock({super.key});

  @override
  State<WassitAudioLiveBlock> createState() => _WassitAudioLiveBlockState();
}

class _WassitAudioLiveBlockState extends State<WassitAudioLiveBlock> {
  bool _isRecording = false;

  void _toggleRecording() {
    setState(() {
      _isRecording = !_isRecording;
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
          color: _isRecording
              ? const Color(0xFF0C8172)
              : const Color(0xFF0C8172).withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'تسجيل صوتي مباشر',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          Text(
            _isRecording
                ? 'جاري تسجيل الصوت...'
                : 'اضغط لبدء تسجيل صوتي باستخدام الميكروفون.',
            style: GoogleFonts.cairo(
              fontSize: 12,
              height: 1.5,
              color: const Color(0xFF444444),
            ),
          ),

          const SizedBox(height: 12),

          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              onPressed: _toggleRecording,
              icon: Icon(
                _isRecording ? Icons.stop : Icons.mic,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _isRecording
                    ? Colors.red
                    : const Color(0xFF0C8172),
                foregroundColor: Colors.white,
              ),
              label: Text(
                _isRecording ? 'إيقاف التسجيل' : 'بدء التسجيل',
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
