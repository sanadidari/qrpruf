import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitImageLiveBlock extends StatefulWidget {
  const WassitImageLiveBlock({super.key});

  @override
  State<WassitImageLiveBlock> createState() => _WassitImageLiveBlockState();
}

class _WassitImageLiveBlockState extends State<WassitImageLiveBlock> {
  bool _hasTakenPhoto = false;

  void _simulateTakePhoto() {
    setState(() {
      _hasTakenPhoto = true;
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
          color: _hasTakenPhoto
              ? const Color(0xFF0C8172)
              : const Color(0xFF0C8172).withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE LIVE
          Text(
            'التقاط صورة مباشرة',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          /// 🔹 DESCRIPTION
          Text(
            _hasTakenPhoto
                ? 'تم التقاط صورة.'
                : 'يمكنك التقاط صورة مباشرة باستخدام كاميرا الجهاز.',
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
              onPressed: _simulateTakePhoto,
              icon: Icon(
                _hasTakenPhoto ? Icons.check_circle : Icons.camera_alt,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _hasTakenPhoto
                    ? const Color(0xFF0C8172)
                    : const Color(0xFF0C8172),
                foregroundColor: Colors.white,
              ),
              label: Text(
                _hasTakenPhoto ? 'تم التقاط الصورة' : 'التقاط صورة',
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
