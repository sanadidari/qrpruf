import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Massar2Page extends StatelessWidget {
  const Massar2Page({super.key});

  static const double _headerHeight = 70;
  static const double _footerHeight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          /// ===== HEADER =====
          SizedBox(
            height: _headerHeight,
            width: double.infinity,
            child: Image.asset(
              'assets/images/header_sec.png',
              fit: BoxFit.cover,
            ),
          ),

          /// ===== TOP BAR =====
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 14, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/ico1.png', width: 22),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/ico2.png', width: 22),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/ico3.png', width: 22),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'إنشاء حساب',
                          style: GoogleFonts.cairo(
                            fontSize: 10,
                            color: Colors.grey.shade600,
                            height: 1.1,
                          ),
                        ),
                        Text(
                          'تسجيل الدخول',
                          style: GoogleFonts.cairo(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            height: 1.1,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 6),
                    Image.asset('assets/images/flechy.png', height: 18),
                  ],
                ),
                Image.asset('assets/images/menu_deroul.png', width: 24),
              ],
            ),
          ),

          /// ===== BODY =====
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  /// ===== TITLE (AUTO SIZE) =====
                  Flexible(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(vertical: 12),
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      color: const Color(0xFFEBF4F3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AutoSizeText(
                            'فضاء التوثيق الميداني',
                            maxLines: 1,
                            minFontSize: 16,
                            style: GoogleFonts.cairo(
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF0C8172),
                            ),
                          ),
                          AutoSizeText(
                            'للمفوض القضائي',
                            maxLines: 1,
                            minFontSize: 14,
                            style: GoogleFonts.cairo(
                              fontSize: 22,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xFF0C8172),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// ===== CONTENT =====
                  Expanded(
                    flex: 6,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              _autoParagraph(
                                'تم تصميم نظام التوثيق الرقمي المبتكر QRpruf خصيصًا ليتماشى مع الاحتياجات الدقيقة للمفوضين القضائيين باعتبارهم من الفاعلين الأساسيين في توثيق الوقائع ذات القيمة القانونية.',
                              ),
                              _autoParagraph(
                                'ويوفر هذا النظام أدوات احترافية للتوثيق الميداني تشمل إدراج المحاضر، حفظ المعاينات، تتبع المسارات الجغرافية، وتسجيل الوقائع بالصوت أو الصورة أو الفيديو في الزمن الحقيقي.',
                              ),
                              _autoParagraph(
                                'ويعتمد QRpruf على آليات توثيق متقدمة تضمن نزاهة البيانات، مع ختم زمني ومكاني دقيق، وحماية ضد أي تعديل أو تلاعب لاحق.',
                              ),
                              _autoParagraph(
                                'كما يسمح النظام بإنشاء محاضر رقمية جاهزة للتسليم وفق المعايير القانونية، مما يمكن المفوض القضائي من إنتاج دليل رقمي قوي يصلح للإدلاء به أمام الجهات المختصة بكل ثقة.',
                              ),
                            ],
                          ),
                        ),

                        Flexible(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AutoSizeText(
                                'ابدأ الآن في اعتماد التوثيق المهني الذكي لترقي ممارساتك، وكن من الأوائل المستفيدين من المنصة المجانية.',
                                textAlign: TextAlign.right,
                                maxLines: 2,
                                minFontSize: 10,
                                style: GoogleFonts.cairo(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600,
                                  color: const Color(0xFF0C8172),
                                  height: 1.6,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 12,
                                  horizontal: 22,
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFA7D6CF),
                                  ),
                                  borderRadius: BorderRadius.circular(14),
                                ),
                                child: AutoSizeText(
                                  'محاضر رقمية… بحجية لا تُجادل',
                                  maxLines: 1,
                                  minFontSize: 10,
                                  style: GoogleFonts.cairo(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF0C8172),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// NAV
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 10, 30, 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _navBtn(
                          'assets/images/ic2.png',
                          'عودة',
                          () => Navigator.pop(context),
                        ),
                        _navBtn(
                          'assets/images/ic3.png',
                          'التالي',
                          () {},
                        ),
                      ],
                    ),
                  ),

                  /// NOTE
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 8),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
                            textAlign: TextAlign.right,
                            maxLines: 3,
                            minFontSize: 7,
                            style: GoogleFonts.cairo(
                              fontSize: 9,
                              height: 1.3,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: [
                            Image.asset('assets/images/whatsy.png', width: 22),
                            const SizedBox(height: 6),
                            Image.asset('assets/images/helpy.png', width: 22),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// ===== FOOTER =====
          SizedBox(
            height: _footerHeight,
            width: double.infinity,
            child: Image.asset(
              'assets/images/footer.png',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }

  static Widget _autoParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: AutoSizeText(
        text,
        textAlign: TextAlign.right,
        maxLines: 4,
        minFontSize: 9,
        style: GoogleFonts.cairo(
          fontSize: 13,
          height: 1.7,
        ),
      ),
    );
  }

  static Widget _navBtn(
    String img,
    String label,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(img, width: 48, height: 48),
          const SizedBox(height: 6),
          Text(label, style: GoogleFonts.cairo(fontSize: 11)),
        ],
      ),
    );
  }
}
