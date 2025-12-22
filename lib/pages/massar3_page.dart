import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../navigation/massar_navigation.dart';

class Massar3Page extends StatelessWidget {
  const Massar3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      /// 🔒 NAVIGATION MASSAR
      onBack: () => Navigator.pop(context),
      onNext: () => goToWassit(context),

      /// 🔒 HEADER — IMAGE SYSTÈME
      header: SizedBox(
        height: 65,
        width: double.infinity,
        child: Image.asset(
          'assets/images/header_sec.png',
          fit: BoxFit.cover,
        ),
      ),

      /// 🔒 FOOTER — IMAGE SYSTÈME
      footer: SizedBox(
        height: 40,
        width: double.infinity,
        child: Image.asset(
          'assets/images/footer.png',
          fit: BoxFit.cover,
        ),
      ),

      /// 🔹 CONTENU MASSAR
      body: Column(
        children: [
          const TitleBlock(
            title: 'فضاء التوثيق الإداري',
            subtitle: '',
          ),

          /// TEXTE — HAUTEUR VERROUILLÉE
          const SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ParagraphBlock(
                  'يعمل نظام التوثيق الرقمي المبتكر QRpruf على إطلاق حزمة توثيق متقدمة موجّهة للإدارات العمومية، تشمل معاينات ميدانية موثّقة، محاضر رقمية، تتبّع مسارات التدخل، وحلولاً فنية تدعم النزاهة والشفافية الإدارية.',
                ),
                ParagraphBlock(
                  'هذه الخدمة توجد حالياً في مرحلة التطوير النهائي، وسيتم توفيرها خلال الشهور القريبة. وإلى حين تفعيلها، يمكن للموظفين والفاعلين الإداريين استعمال مسار "الاستعمال الشخصي" لإنجاز عمليات التوثيق الرقمية بكامل الموثوقية والفعالية المطلوبة.',
                ),
                ParagraphBlock(
                  'ابدأ الآن في اعتماد التوثيق الإداري المتقدّم — سجّل لتكون من الأوائل في الاستفادة من الخطة التجريبية المجانية.',
                ),
              ],
            ),
          ),

          const Spacer(),
          const QuoteBlock('توثيق إداري يعزز الثقة'),
        ],
      ),
    );
  }
}
