import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Massar2Page extends StatelessWidget {
  const Massar2Page({super.key});

  static const double _headerHeight = 70;
  static const double _footerHeight = 40;

  /// Hauteur de référence du design
  static const double _designHeight = 812;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final scale =
              (constraints.maxHeight / _designHeight).clamp(0.75, 1.0);

          return Center(
            child: Transform.scale(
              scale: scale,
              alignment: Alignment.topCenter,
              child: SizedBox(
                width: constraints.maxWidth,
                height: _designHeight,
                child: _buildContent(context),
              ),
            ),
          );
        },
      ),
    );
  }

  /// ================= CONTENT ORIGINAL =================
  Widget _buildContent(BuildContext context) {
    return Column(
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
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(vertical: 18),
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  color: const Color(0xFFEBF4F3),
                  child: Column(
                    children: [
                      Text(
                        'فضاء التوثيق الميداني',
                        style: GoogleFonts.cairo(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF0C8172),
                        ),
                      ),
                      Text(
                        'للمفوض القضائي',
                        style: GoogleFonts.cairo(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF0C8172),
                        ),
                      ),
                    ],
                  ),
                ),

                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          _autoParagraph(
                            'تم تصميم نظام التوثيق الرقمي المبتكر QRpruf خصيصًا ليتماشى مع الاحتياجات الدقيقة للمفوضين القضائيين باعتبارهم من الفاعلين الأساسيين في توثيق الوقائع ذات القيمة القانونية.',
                          ),
                          const SizedBox(height: 10),
                          _autoParagraph(
                            'ويوفر هذا النظام أدوات احترافية للتوثيق الميداني تشمل إدراج المحاضر، حفظ المعاينات، تتبع المسارات الجغرافية، وتسجيل الوقائع بالصوت أو الصورة أو الفيديو في الزمن الحقيقي.',
                          ),
                          const SizedBox(height: 10),
                          _autoParagraph(
                            'ويعتمد QRpruf على آليات توثيق متقدمة تضمن نزاهة البيانات، مع ختم زمني ومكاني دقيق، وحماية ضد أي تعديل أو تلاعب لاحق.',
                          ),
                          const SizedBox(height: 10),
                          _autoParagraph(
                            'كما يسمح النظام بإنشاء محاضر رقمية جاهزة للتسليم وفق المعايير القانونية، مما يمكن المفوض القضائي من إنتاج دليل رقمي قوي يصلح للإدلاء به أمام الجهات المختصة بكل ثقة.',
                          ),
                        ],
                      ),

                      Column(
                        children: [
                          Text(
                            'ابدأ الآن في اعتماد التوثيق المهني الذكي لترقي ممارساتك، وكن من الأوائل المستفيدين من المنصة المجانية.',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.cairo(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF0C8172),
                              height: 1.7,
                            ),
                          ),
                          const SizedBox(height: 16),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 16,
                              horizontal: 26,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFA7D6CF),
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Text(
                              'محاضر رقمية… بحجية لا تُجادل',
                              style: GoogleFonts.cairo(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF0C8172),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 14, 30, 18),
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

                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن النظام، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.cairo(
                            fontSize: 9,
                            height: 1.4,
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
    );
  }

  static Widget _autoParagraph(String text) {
    return AutoSizeText(
      text,
      textAlign: TextAlign.right,
      maxLines: 3,
      minFontSize: 10,
      style: GoogleFonts.cairo(
        fontSize: 13,
        height: 1.9,
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
