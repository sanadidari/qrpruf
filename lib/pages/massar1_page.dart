import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../navigation/massar_navigation.dart';

class Massar1Page extends StatelessWidget {
  const Massar1Page({super.key});

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
              title: 'فضاء التوثيق الشخصي',
              subtitle: '',
            ),

            const SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يوفّر نظام التوثيق الرقمي المبتكر QRpruf لكل الأفراد وسيلة توثيق بسيطة وموثوقة لحماية حقوقهم في المواقف اليومية،'
                    ' سواء لإثبات حضور، أو حفظ محادثات وصور وفيديوهات، أو توثيق أي واقعة تستدعي دليلاً زمنياً ومكانياً محكماً.'
                  ),
                  ParagraphBlock(
                    'تم تصميم هذا المسار ليمنح المستخدم تجربة مباشرة وسهلة، دون أي تعقيد تقني أو قانوني، مع واجهة خفيفة وخطوات واضحة تتيح التوثيق بنقرة واحدة عبر “موقعي التلقائي”. ويقدّم لك النظام دليلاً رقمياً كاملاً ومشفّراً يعزّز مصداقيتك ويضمن سلامة ما توثّقه، لتستعمله عند الحاجة بثقة واطمئنان.',
                  ),
                  ParagraphBlock(
                    'سجّل حسابك اليوم لتكون من أوائل المستفيدين من التجربــة المجانية ومـن الخصائـص الكاملـة للتطبيـق !',
                  ),
                ],
              ),
            ),

            const QuoteBlock('الإثبات لم يعد عبئًا عليك'),
          ],
        ),
      ),
    );
  }
}
