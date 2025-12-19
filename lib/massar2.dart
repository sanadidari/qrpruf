import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Massar2Page extends StatelessWidget {
  const Massar2Page({super.key});

  static const double _headerVisualHeight = 70;
  static const double _footerVisualHeight = 40;

  @override
  Widget build(BuildContext context) {
    final topSafe = MediaQuery.of(context).viewPadding.top;
    final bottomSafe = MediaQuery.of(context).viewPadding.bottom;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          /// ===== HEADER =====
          SizedBox(
            height: _headerVisualHeight + topSafe,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: topSafe),
                SizedBox(
                  height: _headerVisualHeight,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/header_sec.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),

          /// ===== TOP BAR =====
          Padding(
            padding: const EdgeInsets.fromLTRB(14, 14, 14, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  children: const [
                    _TopIcon('assets/images/ico1.png'),
                    SizedBox(width: 8),
                    _TopIcon('assets/images/ico2.png'),
                    SizedBox(width: 8),
                    _TopIcon('assets/images/ico3.png'),
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
                            color: Colors.grey,
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
                    Image.asset(
                      'assets/images/flechy.png',
                      height: 18,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/images/menu_deroul.png',
                  width: 24,
                ),
              ],
            ),
          ),

          /// ===== BODY =====
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                children: [
                  /// TITLE
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(vertical: 24),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    color: const Color(0xFFEBF4F3),
                    child: Column(
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

                  /// CONTENT (CLAMPED)
                  SizedBox(
                    height: 240,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        _Paragraph(
                          'تم تصميم نظام التوثيق الرقمي المبتكر QRpruf خصيصًا ليتماشى مع الاحتياجات الدقيقة للمفوضين القضائيين باعتبارهم من الفاعلين الأساسيين في توثيق الوقائع ذات القيمة القانونية.',
                        ),
                        _Paragraph(
                          'ويوفر هذا النظام أدوات احترافية للتوثيق الميداني تشمل إدراج المحاضر، حفظ المعاينات، تتبع المسارات الجغرافية، وتسجيل الوقائع بالصوت أو الصورة أو الفيديو في الزمن الحقيقي.',
                        ),
                        _Paragraph(
                          'ويعتمد QRpruf على آليات توثيق متقدمة تضمن نزاهة البيانات، مع ختم زمني ومكاني دقيق، وحماية ضد أي تعديل أو تلاعب لاحق.',
                        ),
                        _Paragraph(
                          'كما يسمح النظام بإنشاء محاضر رقمية جاهزة للتسليم وفق المعايير القانونية، مما يمكن المفوض القضائي من إنتاج دليل رقمي قوي يصلح للإدلاء به أمام الجهات المختصة بكل ثقة.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  /// CTA
                  AutoSizeText(
                    'ابدأ الآن في اعتماد التوثيق المهني الذكي لترقي ممارساتك، وكن من الأوائل المستفيدين من المنصة المجانية.',
                    textAlign: TextAlign.right,
                    maxLines: 2,
                    minFontSize: 10,
                    style: GoogleFonts.cairo(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF0C8172),
                      height: 1.7,
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// QUOTE
                  Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 18,
                      horizontal: 26,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color(0xFFA7D6CF)),
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

                  const Spacer(),

                  /// NAV
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        _NavBtn(
                          img: 'assets/images/ic2.png',
                          label: 'عودة',
                        ),
                        _NavBtn(
                          img: 'assets/images/ic3.png',
                          label: 'التالي',
                        ),
                      ],
                    ),
                  ),

                  /// NOTE
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: AutoSizeText(
                            'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
                            textAlign: TextAlign.right,
                            maxLines: 3,
                            minFontSize: 7,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.cairo(
                              fontSize: 9,
                              height: 1.4,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Column(
                          children: const [
                            _NoteIcon('assets/images/whatsy.png'),
                            SizedBox(height: 6),
                            _NoteIcon('assets/images/helpy.png'),
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
            height: _footerVisualHeight + bottomSafe,
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: _footerVisualHeight,
                  width: double.infinity,
                  child: Image.asset(
                    'assets/images/footer.png',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: bottomSafe),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// ===== SUB WIDGETS =====

class _TopIcon extends StatelessWidget {
  final String src;
  const _TopIcon(this.src);

  @override
  Widget build(BuildContext context) {
    return Image.asset(src, width: 22);
  }
}

class _Paragraph extends StatelessWidget {
  final String text;
  const _Paragraph(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: AutoSizeText(
        text,
        textAlign: TextAlign.right,
        maxLines: 2,
        minFontSize: 10,
        overflow: TextOverflow.ellipsis,
        style: GoogleFonts.cairo(
          fontSize: 13,
          height: 1.9,
        ),
      ),
    );
  }
}

class _NavBtn extends StatelessWidget {
  final String img;
  final String label;
  const _NavBtn({required this.img, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(img, width: 48),
        const SizedBox(height: 6),
        Text(label, style: GoogleFonts.cairo(fontSize: 11)),
      ],
    );
  }
}

class _NoteIcon extends StatelessWidget {
  final String src;
  const _NoteIcon(this.src);

  @override
  Widget build(BuildContext context) {
    return Image.asset(src, width: 22);
  }
}
