import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../blocks/note_block.dart';
import '../blocks/nav_block.dart';

class Massar4Page extends StatelessWidget {
  const Massar4Page({super.key});

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
            const TitleBlock(
              title: 'فضاء التوثيق القضائي',
              subtitle: '',
            ),

            const SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يوفر QRpruf فضاءً مخصصًا للتوثيق القضائي، يمكن من خلاله إنشاء محاضر رقمية ذات حجية قانونية، مع ضمان سلامة البيانات وتكاملها وفق المعايير المعتمدة.',
                  ),
                  ParagraphBlock(
                    'تم تصميم هذا الفضاء ليخدم مختلف الفاعلين في المجال القضائي، مع توفير أدوات توثيق متقدمة، وختم زمني ومكاني، وآليات تحقق دقيقة.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const QuoteBlock(
              'التوثيق القضائي… دقة، نزاهة، وحجية',
            ),

            const Spacer(),

            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            const NoteBlock(
              'ملاحظة: جميع عمليات التوثيق داخل فضاء QRpruf تتم باحترام القوانين الجاري بها العمل، دون تخزين أي معطيات شخصية خارج الإطار القانوني الآمن.',
            ),
          ],
        ),
      ),
    );
  }
}
