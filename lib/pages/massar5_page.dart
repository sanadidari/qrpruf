import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../blocks/note_block.dart';
import '../blocks/nav_block.dart';

class Massar5Page extends StatelessWidget {
  const Massar5Page({super.key});

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
            /// ✅ TOP BAR SYSTÈME
            const TopBarBlock(),

            /// ✅ TITLE
            const TitleBlock(
              title: 'فضاء التوثيق الذكي للبحث العلمي',
              subtitle: '',
            ),

            /// ✅ CONTENT VERROUILLÉ
            const SizedBox(
              height: 260,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يوفر نظام التوثيق الرقمي المبتكر QRpruf بيئة توثيق متقدمة للباحثين '
                    'والأكاديميين، تمكّنهم من توثيق الأعمال العلمية والنتائج والتجارب '
                    'بدقة عالية، مع حماية البيانات ومنع التلاعب وإمكانية التحقق المستقل.',
                  ),
                  ParagraphBlock(
                    'تعتمد المنظومة على ختم زمني ومكاني وآليات تحقق دقيقة لضمان النزاهة '
                    'والموثوقية، وتتيح مسارات توثيق مرنة تُسجّل الملاحظات والنتائج وإثبات '
                    'مراحل العمل العلمي بكيفية تمنع النزاع أو التشكيك.',
                  ),
                  ParagraphBlock(
                    'ابدأ الآن في توثيق عملك العلمي بدقة عالية — '
                    'سجل للاستفادة من النسخة التجريبية المجانية للباحثين والخبراء.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            /// ✅ QUOTE
            const QuoteBlock(
              'العلم الموثق… علم لا يُشكك',
            ),

            const Spacer(),

            /// ✅ NAVIGATION BASSE
            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            /// ✅ NOTE
            const NoteBlock(
              'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام، '
              'وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، '
              'دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
            ),
          ],
        ),
      ),
    );
  }
}
