import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../blocks/note_block.dart';
import '../blocks/nav_block.dart';

class Massar2Page extends StatelessWidget {
  const Massar2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      header: SizedBox(
        height: 70,
        width: double.infinity,
        child: Image.asset(
          'assets/images/header_sec.png',
          fit: BoxFit.cover,
        ),
      ),
      footer: SizedBox(
        height: 40,
        width: double.infinity,
        child: Image.asset(
          'assets/images/footer.png',
          fit: BoxFit.cover,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            /// ✅ TOP BAR UNIFIÉE
            const TopBarBlock(),

            const TitleBlock(
              title: 'فضاء التوثيق الميداني',
              subtitle: 'للمفوض القضائي',
            ),

            const SizedBox(
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'تم تصميم QRpruf ليتماشى مع الاحتياجات الدقيقة للمفوضين القضائيين.',
                  ),
                  ParagraphBlock(
                    'أدوات احترافية للتوثيق الميداني وختم زمني ومكاني.',
                  ),
                  ParagraphBlock(
                    'محاضر رقمية جاهزة للتسليم القانوني.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            const QuoteBlock('محاضر رقمية… بحجية لا تُجادل'),

            const Spacer(),

            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            const NoteBlock(
              'ملاحظة: جميع عمليات التوثيق تتم وفق الإطار القانوني الآمن.',
            ),
          ],
        ),
      ),
    );
  }
}
