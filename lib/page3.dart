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
          /// ================= HEADER =================
          SizedBox(
            height: headerHeight,
            width: double.infinity,
            child: Image.asset(
              'assets/images/header.png',
              fit: BoxFit.cover,
            ),
          ),

          /// ================= BODY =================
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  /// -------- TITLE --------
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(top: 16, bottom: 14),
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    color: const Color(0xFFEBF4F3),
                    child: Text(
                      'فضاء التوثيق الشخصي',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF0C8172),
                      ),
                    ),
                  ),

                  /// -------- CONTENT --------
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// TEXT PARAGRAPHS
                        Column(
                          children: [
                            _paragraph(
                              'يوفر نظام التوثيق الرقمي المبتكر QRpruf لكل الأفراد وسيلة توثيق بسيطة وموثوقة لحماية حقوقهم في المواقف اليومية، سواء إثبات حضور، أو حفظ محادثات وصور وفيديوهات، أو توثيق أي واقعة تستدعي الاحتفاظ بدليل رقمي موثوق.',
                            ),
                            const SizedBox(height: 8),
                            _paragraph(
                              'تم تصميم هذا الفضاء ليمنح المستخدم تجربة مباشرة وسهلة، دون أي تعقيد تقني أو قانوني، مع واجهة ذكية وخطوات واضحة تتيح لك إنشاء أدلتك الرقمية بسرعة وأمان.',
                            ),
                            const SizedBox(height: 8),
                            Text(
                              'سجّل حسابك اليوم لتكون من أوائل المستفيدين من التجربة المجانية ومن الخصائص الكاملة للتطبيق!',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cairo(
                                fontSize: 13,
                                height: 1.5,
                                fontWeight: FontWeight.w600,
                                color: const Color(0xFF0C8172),
                              ),
                            ),
                          ],
                        ),

                        /// QUOTE
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 14),
                          padding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 20),
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: const Color(0xFFA7D6CF)),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: Text(
                            'الإثبات لم يعد عبئًا عليك',
                            style: GoogleFonts.cairo(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xFF0C8172),
                            ),
                          ),
                        ),

                        /// NAV BUTTONS
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _navBtn(
                              'assets/images/back.png',
                              'عودة للرئيسية',
                              () => Navigator.pop(context),
                            ),
                            _navBtn(
                              'assets/images/next.png',
                              'التالي',
                              () {},
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  /// -------- NOTE --------
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Image.asset('assets/images/whatsy.png',
                              width: 22),
                          const SizedBox(height: 6),
                          Image.asset('assets/images/helpy.png',
                              width: 22),
                        ],
                      ),
                      const SizedBox(width: 8),
                      Expanded(
                        child: Text(
                          'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن مركز التحكم، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
                          textAlign: TextAlign.right,
                          style: GoogleFonts.cairo(
                            fontSize: 9,
                            height: 1.35,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// ================= FOOTER =================
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
      textAlign: TextAlign.center,
      style: GoogleFonts.cairo(
        fontSize: 13,
        height: 1.7,
      ),
    );
  }

  static Widget _navBtn(
      String img, String label, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(img, width: 46, height: 46),
          const SizedBox(height: 4),
          Text(
            label,
            style: GoogleFonts.cairo(fontSize: 11),
          ),
        ],
      ),
    );
  }
}
