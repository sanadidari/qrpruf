import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../navigation/massar_navigation.dart';

class Massar5Page extends StatelessWidget {
  const Massar5Page({super.key});

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
              title: 'فضاء التوثيق الذكي للبحث العلمي',
              subtitle: '',
            ),

            const SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يوفّر QRpruf حلولاً متقدّمة للهيئات المهنية، النقابات، الجمعيات، والتعاونيات من أجل توثيق أنشطتها ومحاضر اجتماعاتها وعملياتها الميدانية والمراسلات الرسمية بكل شفافية وحياد. وتوجد الحزمة المؤسسية المُخصّصة لهذا القطاع في مرحلة التطوير النهائي، وستُمكّن قريباً من حفظ القرارات، إثبات الحضور، توثيق المبادرات، وضبط السجلات التنظيمية بدليل رقمي محكم يعزّز المساءلة ويمنح حماية قانونية أقوى.'
                  ),
                  ParagraphBlock(
                    'وإلى حين إطلاق هذه النسخة، يمكن للهيئات اعتماد مسار "الاستعمال الشخصي" لإتمام عمليات التوثيق الرقمية بكفاءة وموثوقية عالية.'
                  ),
                  ParagraphBlock(
                    'ارتقِ بالشفافية داخل هيئتكم — سجّل الآن للاستفادة من النسخة التجريبية المجانية للتوثيق المؤسسي.'
                  ),
                ],
              ),
            ),

            const QuoteBlock('توثيق مؤسسي يعزّز الشفافيةوالمساءلة'),
          ],
        ),
      ),
    );
  }
}
