import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../layout/page_template_wassit.dart';
import '../blocks/topbar_block.dart';
import '../blocks/wassit_selector_block.dart';

class WassitSummaryPage extends StatelessWidget {
  /// ✅ Moyens validés (nouvelle API propre)
  final Set<WassitType> validatedTypes;

  const WassitSummaryPage({
    super.key,
    required this.validatedTypes,
  });

  @override
  Widget build(BuildContext context) {
    return PageTemplateWassit(
      onBack: () => Navigator.pop(context),
      onNext: () {
        // 🔒 ICI : SUPABASE (plus tard)
      },

      header: Image.asset(
        'assets/images/header_sec.png',
        fit: BoxFit.cover,
      ),

      footer: Image.asset(
        'assets/images/footer.png',
        fit: BoxFit.cover,
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const TopBarBlock(),

            const SizedBox(height: 18),

            Text(
              'ملخص وسائل التوثيق',
              style: GoogleFonts.cairo(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF0C8172),
              ),
            ),

            const SizedBox(height: 24),

            ...validatedTypes.map(_buildItem).toList(),
          ],
        ),
      ),
    );
  }

  /// 🔹 ITEM SUMMARY
  Widget _buildItem(WassitType type) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            color: const Color(0xFF0C8172),
            size: 20,
          ),
          const SizedBox(width: 10),
          Text(
            _label(type),
            style: GoogleFonts.cairo(fontSize: 14),
          ),
        ],
      ),
    );
  }

  /// 🔹 LABEL HUMAIN
  String _label(WassitType type) {
    switch (type) {
      case WassitType.audio:
        return 'مقطع صوتي';
      case WassitType.image:
        return 'لقطة صورة';
      case WassitType.video:
        return 'شريط فيديو';
      case WassitType.text:
        return 'بيان مكتوب';
      case WassitType.track:
        return 'تسجيل المسار';
    }
  }
}
