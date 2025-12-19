import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../blocks/note_block.dart';
import '../blocks/nav_block.dart';

class Massar1Page extends StatelessWidget {
  const Massar1Page({super.key});

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
              title: 'فضاء التوثيق الشخصي',
              subtitle: '',
            ),

            const SizedBox(
              height: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يوفر نظام التوثيق الرقمي المبتكر QRpruf لكل الأفراد وسيلة توثيق بسيطة وموثوقة لحماية حقوقهم في المواقف اليومية.',
                  ),
                  ParagraphBlock(
                    'واجهة ذكية وخطوات واضحة تتيح لك إنشاء أدلتك الرقمية بسرعة وأمان.',
                  ),
                  ParagraphBlock(
                    'سجّل حسابك اليوم لتكون من أوائل المستفيدين من التجربة المجانية.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const QuoteBlock('الإثبات لم يعد عبئًا عليك'),

            const Spacer(),

            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            const NoteBlock(
              'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام.',
            ),
          ],
        ),
      ),
    );
  }
}
