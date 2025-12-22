import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../layout/page_template_wassit.dart';
import '../blocks/wassit_selector_block.dart';

class WassitSummaryPage extends StatelessWidget {
  final Set<WassitType> validatedTypes;

  const WassitSummaryPage({
    super.key,
    required this.validatedTypes,
  });

  String _labelForType(WassitType type) {
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

  IconData _iconForType(WassitType type) {
    switch (type) {
      case WassitType.audio:
        return Icons.mic;
      case WassitType.image:
        return Icons.image;
      case WassitType.video:
        return Icons.videocam;
      case WassitType.text:
        return Icons.description;
      case WassitType.track:
        return Icons.location_on;
    }
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplateWassit(
      onBack: () => Navigator.pop(context),
      onNext: () {
        /// 🔒 POINT D’ENTRÉE FUTUR VERS LE DYNAMIQUE
        /// (auth, permissions, Supabase, upload réel)
      },

      header: Image.asset(
        'assets/images/header_sec.png',
        fit: BoxFit.cover,
      ),
      footer: Image.asset(
        'assets/images/footer.png',
        fit: BoxFit.cover,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TITRE
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Text(
                'مراجعة وسائل الإثبات',
                style: GoogleFonts.cairo(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFF0C8172),
                ),
              ),
            ),
          ),

          /// 🔹 LISTE DES MOYENS VALIDÉS
          Expanded(
            child: validatedTypes.isEmpty
                ? Center(
                    child: Text(
                      'لم يتم اختيار أي وسيلة.',
                      style: GoogleFonts.cairo(
                        fontSize: 13,
                        color: Colors.grey,
                      ),
                    ),
                  )
                : ListView.separated(
                    itemCount: validatedTypes.length,
                    separatorBuilder: (_, __) =>
                        const SizedBox(height: 8),
                    itemBuilder: (context, index) {
                      final type = validatedTypes.elementAt(index);
                      return Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: const Color(0xFF0C8172)
                                .withOpacity(0.3),
                          ),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              _iconForType(type),
                              color: const Color(0xFF0C8172),
                            ),
                            const SizedBox(width: 12),
                            Expanded(
                              child: Text(
                                _labelForType(type),
                                style: GoogleFonts.cairo(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Text(
                              'تم الاختيار',
                              style: GoogleFonts.cairo(
                                fontSize: 12,
                                color: const Color(0xFF0C8172),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
          ),

          const SizedBox(height: 16),

          /// 🔹 CONFIRMATION FINALE
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                /// 🔒 CONFIRMATION FINALE
                /// → ici seulement commencera le traitement réel
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0C8172),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 14),
              ),
              child: Text(
                'تأكيد نهائي',
                style: GoogleFonts.cairo(
                  fontSize: 15,
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
