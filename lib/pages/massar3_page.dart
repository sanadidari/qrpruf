import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../blocks/note_block.dart';
import '../blocks/nav_block.dart';

class Massar3Page extends StatelessWidget {
  const Massar3Page({super.key});

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
              title: 'فضاء التوثيق الإداري',
              subtitle: '',
            ),

            const SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'حزمة توثيق موجهة للإدارات العمومية.',
                  ),
                  ParagraphBlock(
                    'معاينات ميدانية ومحاضر رقمية.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const QuoteBlock('توثيق إداري يعزز الثقة'),

            const Spacer(),

            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            const NoteBlock(
              'ملاحظة: لا يتم تخزين أي معطيات شخصية.',
            ),
          ],
        ),
      ),
    );
  }
}
