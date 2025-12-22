import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitAudioUploadBlock extends StatefulWidget {
  const WassitAudioUploadBlock({super.key});

  @override
  State<WassitAudioUploadBlock> createState() => _WassitAudioUploadBlockState();
}

class _WassitAudioUploadBlockState extends State<WassitAudioUploadBlock> {
  bool _hasSelectedFile = false;

  void _simulatePickFile() {
    setState(() {
      _hasSelectedFile = true;
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
          color: _hasSelectedFile
              ? const Color(0xFF0C8172)
              : Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE
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
            _hasSelectedFile
                ? 'تم اختيار ملف صوتي.'
                : 'اختر ملفًا صوتيًا محفوظًا على جهازك.',
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
              onPressed: _simulatePickFile,
              icon: Icon(
                _hasSelectedFile ? Icons.check_circle : Icons.upload_file,
                color: _hasSelectedFile
                    ? const Color(0xFF0C8172)
                    : Colors.grey,
              ),
              label: Text(
                _hasSelectedFile ? 'تم اختيار الملف' : 'اختيار ملف صوتي',
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
