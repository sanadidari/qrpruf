import 'package:flutter/material.dart';

import '../layout/page_template.dart';
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
      // ===== HEADER =====
      header: SizedBox(
        height: 70,
        width: double.infinity,
        child: Image.asset(
          'assets/images/header_sec.png',
          fit: BoxFit.cover,
        ),
      ),

      // ===== FOOTER =====
      footer: SizedBox(
        height: 40,
        width: double.infinity,
        child: Image.asset(
          'assets/images/footer.png',
          fit: BoxFit.cover,
        ),
      ),

      // ===== BODY =====
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
                  // ICONS
                  Row(
                    children: [
                      Image.asset('assets/images/ico1.png', width: 22),
                      const SizedBox(width: 8),
                      Image.asset('assets/images/ico2.png', width: 22),
                      const SizedBox(width: 8),
                      Image.asset('assets/images/ico3.png', width: 22),
                    ],
                  ),

                  // LOGIN
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

                  // MENU
                  Image.asset(
                    'assets/images/menu_deroul.png',
                    width: 24,
                  ),
                ],
              ),
            ),

            // ===== TITLE =====
            const TitleBlock(
              title: 'فضاء التوثيق الشخصي',
              subtitle: '',
            ),

            // ===== TEXT CONTENT (HEIGHT LOCKED) =====
            const SizedBox(
              height: 220,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'يوفر نظام التوثيق الرقمي المبتكر QRpruf لكل الأفراد وسيلة توثيق بسيطة وموثوقة لحماية حقوقهم في المواقف اليومية، سواء إثبات حضور، أو حفظ محادثات وصور وفيديوهات، أو توثيق أي واقعة تستدعي الاحتفاظ بدليل رقمي موثوق.',
                  ),
                  ParagraphBlock(
                    'تم تصميم هذا الفضاء ليمنح المستخدم تجربة مباشرة وسهلة، دون أي تعقيد تقني أو قانوني، مع واجهة ذكية وخطوات واضحة تتيح لك إنشاء أدلتك الرقمية بسرعة وأمان.',
                  ),
                  ParagraphBlock(
                    'سجّل حسابك اليوم لتكون من أوائل المستفيدين من التجربة المجانية ومن الخصائص الكاملة للتطبيق!',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // ===== QUOTE =====
            const QuoteBlock(
              'الإثبات لم يعد عبئًا عليك',
            ),

            const Spacer(),

            // ===== NAV =====
            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            // ===== NOTE =====
            const NoteBlock(
              'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن مركز التحكم، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
            ),
          ],
        ),
      ),
    );
  }
}
