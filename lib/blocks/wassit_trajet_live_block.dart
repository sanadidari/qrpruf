import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitTrajetLiveBlock extends StatefulWidget {
  const WassitTrajetLiveBlock({super.key});

  @override
  State<WassitTrajetLiveBlock> createState() =>
      _WassitTrajetLiveBlockState();
}

class _WassitTrajetLiveBlockState extends State<WassitTrajetLiveBlock> {
  bool _isTracking = false;
  bool _hasRecordedTrack = false;

  void _toggleTracking() {
    setState(() {
      if (_isTracking) {
        _isTracking = false;
        _hasRecordedTrack = true;
      } else {
        _isTracking = true;
      }
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
          color: _hasRecordedTrack
              ? const Color(0xFF0C8172)
              : const Color(0xFF0C8172).withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE LIVE
          Text(
            'تسجيل المسار الجغرافي',
            style: GoogleFonts.cairo(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 6),

          /// 🔹 DESCRIPTION
          Text(
            _hasRecordedTrack
                ? 'تم تسجيل مسار.'
                : _isTracking
                    ? 'جاري تسجيل المسار...'
                    : 'ابدأ تسجيل مسار جغرافي باستخدام نظام تحديد الموقع.',
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
              onPressed: _toggleTracking,
              icon: Icon(
                _isTracking
                    ? Icons.stop
                    : _hasRecordedTrack
                        ? Icons.check_circle
                        : Icons.location_on,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: _isTracking
                    ? Colors.red
                    : const Color(0xFF0C8172),
                foregroundColor: Colors.white,
              ),
              label: Text(
                _isTracking
                    ? 'إيقاف التسجيل'
                    : _hasRecordedTrack
                        ? 'تم تسجيل المسار'
                        : 'بدء تسجيل المسار',
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
