import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitImageUploadBlock extends StatefulWidget {
  const WassitImageUploadBlock({super.key});

  @override
  State<WassitImageUploadBlock> createState() => _WassitImageUploadBlockState();
}

class _WassitImageUploadBlockState extends State<WassitImageUploadBlock> {
  bool _hasSelectedImage = false;

  void _simulatePickImage() {
    setState(() {
      _hasSelectedImage = true;
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
          color: _hasSelectedImage
              ? const Color(0xFF0C8172)
              : Colors.grey.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE UPLOAD
          Text(
            'رفع صورة',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          /// 🔹 DESCRIPTION
          Text(
            _hasSelectedImage
                ? 'تم اختيار صورة.'
                : 'اختر صورة محفوظة مسبقًا على جهازك.',
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
              onPressed: _simulatePickImage,
              icon: Icon(
                _hasSelectedImage ? Icons.check_circle : Icons.image,
                color: _hasSelectedImage
                    ? const Color(0xFF0C8172)
                    : Colors.grey,
              ),
              label: Text(
                _hasSelectedImage ? 'تم اختيار الصورة' : 'اختيار صورة',
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
