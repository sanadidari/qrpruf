import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../navigation/massar_navigation.dart';

class Massar2Page extends StatelessWidget {
  const Massar2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      onBack: () => Navigator.pop(context),
      onNext: () => goToWassit(context),

      header: SizedBox(
        height: 65,
        width: double.infinity,
        child: Image.asset('assets/images/header_sec.png', fit: BoxFit.cover),
      ),

      footer: SizedBox(
        height: 40,
        width: double.infinity,
        child: Image.asset('assets/images/footer.png', fit: BoxFit.cover),
      ),

      body: Column(
        children: [
          const TitleBlock(
            title: 'فضاء التوثيق الميداني',
            subtitle: 'للمفوض القضائي',
          ),

          const SizedBox(
            height: 150,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ParagraphBlock(
                  'تم تصميم نظام التوثيق الرقمي المبتكر QRpruf خصيصاً ليتماشى مع الاحتياجات الدقيقة للمفوضين القضائيين، باعتبارهم من المهن التي تستوجب توثيقاً محايداً ومؤمّناً وعالي الحجّية.',
                ),
                ParagraphBlock(
                  'ويوفّر لهم النظام أدوات احترافية للتوثيق الميداني تشمل إدراج المحاضر، حفظ المعاينات، تتبّع المسارات الجغرافية، وتسجيل الوقائع بالصوت أو الصورة أو الفيديو بختم زمني ومكاني موثوق.',
                ),
                ParagraphBlock(
                  'ابدأ الآن في اعتماد التوثيق المهني الذكي لترتقي بممارستك – سجّل لتكون من الأوائل المستفيدين من الخطة المجانية.',
                ),
              ],
            ),
          ),

          const Spacer(),
          const QuoteBlock('محاضر رقمية… بحجية لا تُجادل'),
        ],
      ),
    );
  }
}
