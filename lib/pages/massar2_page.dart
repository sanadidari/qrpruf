import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../blocks/note_block.dart';
import '../blocks/nav_block.dart';

class Massar2Page extends StatelessWidget {
  const Massar2Page({super.key});

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
              title: 'فضاء التوثيق الميداني',
              subtitle: 'للمفوض القضائي',
            ),

            // ===== CONTENT (HEIGHT LOCKED) =====
            const SizedBox(
              height: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ParagraphBlock(
                    'تم تصميم نظام التوثيق الرقمي المبتكر QRpruf خصيصًا ليتماشى مع الاحتياجات الدقيقة للمفوضين القضائيين باعتبارهم من الفاعلين الأساسيين في توثيق الوقائع ذات القيمة القانونية.',
                  ),
                  ParagraphBlock(
                    'ويوفر هذا النظام أدوات احترافية للتوثيق الميداني تشمل إدراج المحاضر، حفظ المعاينات، تتبع المسارات الجغرافية، وتسجيل الوقائع بالصوت أو الصورة أو الفيديو في الزمن الحقيقي.',
                  ),
                  ParagraphBlock(
                    'ويعتمد QRpruf على آليات توثيق متقدمة تضمن نزاهة البيانات، مع ختم زمني ومكاني دقيق، وحماية ضد أي تعديل أو تلاعب لاحق.',
                  ),
                  ParagraphBlock(
                    'كما يسمح النظام بإنشاء محاضر رقمية جاهزة للتسليم وفق المعايير القانونية، مما يمكن المفوض القضائي من إنتاج دليل رقمي قوي يصلح للإدلاء به أمام الجهات المختصة بكل ثقة.',
                  ),
                ],
              ),
            ),

            const SizedBox(height: 18),

            // ===== CTA =====
            const Text(
              'ابدأ الآن في اعتماد التوثيق المهني الذكي لترقي ممارساتك، وكن من الأوائل المستفيدين من المنصة المجانية.',
              textAlign: TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
                color: Color(0xFF0C8172),
                height: 1.7,
              ),
            ),

            const SizedBox(height: 24),

            // ===== QUOTE =====
            const QuoteBlock(
              'محاضر رقمية… بحجية لا تُجادل',
            ),

            const Spacer(),

            // ===== NAV =====
            NavBlock(
              onBack: () => Navigator.pop(context),
              onNext: () {},
            ),

            // ===== NOTE =====
            const NoteBlock(
              'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
            ),
          ],
        ),
      ),
    );
  }
}
