import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../navigation/massar_navigation.dart';

class Massar4Page extends StatelessWidget {
  const Massar4Page({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      /// 🔒 NAVIGATION MASSAR (OBLIGATOIRE)
      onBack: () => Navigator.pop(context),
      onNext: () => goToWassit(context),

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

      /// 🔹 CONTENU UNIQUEMENT
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            TopBarBlock(),

            const TitleBlock(
              title: 'فضـاء التوثيـق المؤسسـي للمقاولات',
              subtitle: '',
            ),

            const SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يقدّم نظام التوثيق الرقمي QRpruf حلولاً متقدّمة لتوثيق العمليات المهنية داخل المقاولات، بما يشمل إثبات التسليم، مراقبة الجودة، تتبّع مراحل الإنجاز، حفظ المحادثات المهنية، وإثبات الوقائع داخل أماكن العمل. هذه المنظومة المتخصّصة توجد حالياً في مرحلة التطوير النهائي، وسيتم إطلاقها قريباً لضمان توثيق احترافي يعزّز حماية المقاولة ويحدّ من النزاعات ويحسّن تدبيرها الداخلي.',
                  ),
                  ParagraphBlock(
                    'وإلى حين توفر النسخة الموجهة للمؤسسات، يمكن للفرق المهنية اعتماد مسار "الاستعمال الشخصي" لإتمام التوثيق الرقمي بكفاءة وموثوقية عالية.',
                  ),
                  ParagraphBlock(
                    'فعّل التوثيق المتقدم داخل مؤسستك — سجّل لتكون من الأوائل في الاستفادة من الخطة التجريبية المجانية.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const QuoteBlock('توثيق يحمي أعمالك ويقلّل النزاعات'),
          ],
        ),
      ),
    );
  }
}
