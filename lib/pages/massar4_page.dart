import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../navigation/massar_navigation.dart';

class Massar4Page extends StatelessWidget {
  const Massar4Page({super.key});

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
            title: 'فضـاء التوثيـق المؤسسـي للمقاولات',
            subtitle: '',
          ),

          /// TEXTE — HAUTEUR VERROUILLÉE
          const SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ParagraphBlock(
                  'يقدّم نظام التوثيق الرقمي QRpruf حلولاً متقدّمة لتوثيق العمليات المهنية داخل المقاولات، بما يشمل إثبات التسليم، مراقبة الجودة، تتبّع مراحل الإنجاز، حفظ المحادثات المهنية، وإثبات الوقائع داخل أماكن العمل.',
                ),
                ParagraphBlock(
                  'هذه المنظومة المتخصّصة توجد حالياً في مرحلة التطوير النهائي، وسيتم إطلاقها قريباً لضمان توثيق احترافي يعزّز حماية المقاولة ويحدّ من النزاعات ويحسّن تدبيرها الداخلي.',
                ),
                ParagraphBlock(
                  'فعّل التوثيق المتقدم داخل مؤسستك — سجّل لتكون من الأوائل في الاستفادة من الخطة التجريبية المجانية.',
                ),
              ],
            ),
          ),

          const Spacer(),
          const QuoteBlock('توثيق يحمي أعمالك ويقلّل النزاعات'),
        ],
      ),
    );
  }
}
