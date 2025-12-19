import 'package:flutter/material.dart';

import '../layout/page_template.dart';
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
            // ===== TOP BAR =====
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset(
                    'assets/images/menu_deroul.png',
                    width: 24,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: const [
                          Text(
                            'إنشاء حساب',
                            style: TextStyle(
                              fontSize: 10,
                              color: Colors.grey,
                              height: 1.1,
                            ),
                          ),
                          Text(
                            'تسجيل الدخول',
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              height: 1.1,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 6),
                      Image.asset(
                        'assets/images/flechy.png',
                        height: 18,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/images/ico1.png', width: 22),
                      const SizedBox(width: 8),
                      Image.asset('assets/images/ico2.png', width: 22),
                      const SizedBox(width: 8),
                      Image.asset('assets/images/ico3.png', width: 22),
                    ],
                  ),
                ],
              ),
            ),

            // ===== TITLE =====
            const TitleBlock(
              title: 'فضاء التوثيق الإداري',
              subtitle: '',
            ),

            // ===== TEXT =====
            const SizedBox(
              height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يعمل نظام التوثيق الرقمي المبتكر QRpruf على إطلاق حزمة توثيق متقدمة موجهة للإدارات العمومية، تشمل معاينات ميدانية موثقة، محاضر رقمية، تتبع مسارات التدخل، وحلول تقنية تدعم النزاهة والشفافية في العمل الإداري.',
                  ),
                  ParagraphBlock(
                    'هذه الخدمة توجد حالياً في مرحلة التطوير النهائي، وسيتم توفيرها خلال الأشهر القريبة، وإلى حين تفعيلها يمكن للموظفين والفاعلين الإداريين الاطلاع على مسار الاستعمال التجريبي لإنجاز عمليات التوثيق الرقمية بأعلى معايير الموثوقية والمعاينة المطلوبة.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            const Text(
              'ابدأ الآن في اعتماد التوثيق الإداري المتقدم — سجل لتكون من الأوائل المستفيدين من الخطة التجريبية المجانية.',
              textAlign: TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0C8172),
                height: 1.6,
              ),
            ),

            const SizedBox(height: 16),

            const QuoteBlock(
              'توثيق إداري يعزز الثقة والشفافية',
            ),

            const Spacer(),

            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            const NoteBlock(
              'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
            ),
          ],
        ),
      ),
    );
  }
}
