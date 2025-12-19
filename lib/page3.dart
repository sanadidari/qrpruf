import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Page3Page extends StatelessWidget {
  const Page3Page({super.key});

  static const double headerHeight = 70;
  static const double footerHeight = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          /// ===== HEADER IMAGE =====
          SizedBox(
            height: headerHeight,
            width: double.infinity,
            child: Image.asset(
              'assets/images/header_sec.png',
              fit: BoxFit.cover,
            ),
          ),

          /// ===== TOP BAR (CORRIGÉE) =====
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 14, 12, 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                /// LEFT ICONS
                Row(
                  children: [
                    Image.asset('assets/images/ico1.png', width: 22),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/ico2.png', width: 22),
                    const SizedBox(width: 8),
                    Image.asset('assets/images/ico3.png', width: 22),
                  ],
                ),

                /// LOGIN BLOCK (CENTRÉ)
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
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
                    Image.asset(
                      'assets/images/flechy.png',
                      height: 18,
                    ),
                  ],
                ),

                /// MENU
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
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    color: const Color(0xFFEBF4F3),
                    child: Text(
                      'فضاء التوثيق الشخصي',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF0C8172),
                      ),
                    ),
                  ),

                  /// CONTENT
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            _paragraph(
                              'يوفر نظام التوثيق الرقمي المبتكر QRpruf لكل الأفراد وسيلة توثيق بسيطة وموثوقة لحماية حقوقهم في المواقف اليومية، سواء إثبات حضور، أو حفظ محادثات وصور وفيديوهات، أو توثيق أي واقعة تستدعي الاحتفاظ بدليل رقمي موثوق.',
                            ),
                            const SizedBox(height: 14),
                            _paragraph(
                              'تم تصميم هذا الفضاء ليمنح المستخدم تجربة مباشرة وسهلة، دون أي تعقيد تقني أو قانوني، مع واجهة ذكية وخطوات واضحة تتيح لك إنشاء أدلتك الرقمية بسرعة وأمان.',
                            ),
                            const SizedBox(height: 12),
                            Text(
                              'سجّل حسابك اليوم لتكون من أوائل المستفيدين من التجربة المجانية ومن الخصائص الكاملة للتطبيق!',
                              textAlign: TextAlign.right,
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF0C8172),
                                height: 1.7,
                              ),
                            ),
                          ],
                        ),

                        /// QUOTE
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 22),
                          padding: const EdgeInsets.symmetric(
                            vertical: 18,
                            horizontal: 20,
                          ),
                          constraints:
                              const BoxConstraints(maxWidth: 320),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xFFA7D6CF),
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            'الإثبات لم يعد عبئًا عليك',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cairo(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF0C8172),
                            ),
                          ),
                        ),

                        /// NAV BUTTONS
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(30, 0, 30, 30),
                          child: Row(
                            mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                            children: [
                              _navBtn(
                                'assets/images/ic2.png',
                                'عودة للرئيسية',
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
                      ],
                    ),
                  ),

                  /// NOTE (MARGE BASSE CORRIGÉE)
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 18),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن مركز التحكم، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
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
                            Image.asset(
                              'assets/images/whatsy.png',
                              width: 22,
                            ),
                            const SizedBox(height: 6),
                            Image.asset(
                              'assets/images/helpy.png',
                              width: 22,
                            ),
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
            height: footerHeight,
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

  static Widget _paragraph(String text) {
    return Text(
      text,
      textAlign: TextAlign.right,
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
          Text(
            label,
            style: GoogleFonts.cairo(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
