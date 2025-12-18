import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dash1Page extends StatelessWidget {
  const Dash1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          /// ================= HEADER (IMAGE UNIQUE) =================
          SizedBox(
            height: 65,
            width: double.infinity,
            child: Image.asset(
              'assets/images/header.png', // ⬅️ image complète (logo + slogan)
              fit: BoxFit.cover,
            ),
          ),

          /// ================= CONTENT =================
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// -------- TOP BAR --------
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      left: 10,
                      right: 10,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/menu_deroul.png',
                          width: 24,
                          height: 24,
                        ),

                        /// LOGIN BLOCK (RTL ALIGN CORRECT)
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'إنشاء حساب',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.cairo(
                                    fontSize: 10,
                                    color: Colors.grey.shade600,
                                    height: 1.1,
                                  ),
                                ),
                                Text(
                                  'تسجيل الدخول',
                                  textAlign: TextAlign.right,
                                  style: GoogleFonts.cairo(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    height: 1.1,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 6),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Image.asset(
                                'assets/images/flechy.png',
                                width: 18,
                                height: 18,
                              ),
                            ),
                          ],
                        ),

                        /// ICONES
                        Row(
                          children: [
                            Image.asset('assets/images/ico1.png',
                                width: 22, height: 22),
                            const SizedBox(width: 6),
                            Image.asset('assets/images/ico2.png',
                                width: 22, height: 22),
                            const SizedBox(width: 6),
                            Image.asset('assets/images/ico3.png',
                                width: 22, height: 22),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  /// -------- TITLE --------
                  Container(
                    width: double.infinity,
                    color: const Color(0xFFEBF4F3),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    child: Text(
                      'مركز التحكم التوثيقي',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF0C8172),
                      ),
                    ),
                  ),

                  const SizedBox(height: 18),

                  Text(
                    'مسارات الاستخدام',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.cairo(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'اختر المسار الذي يناسب وضعك القانوني أو المهني للحصول على تجربة توثيق مكيّفة ودقيقة داخل QRpruf.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.cairo(
                        fontSize: 12,
                        height: 1.7,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  /// -------- HR --------
                  Container(
                    width: 150,
                    height: 1,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    color: Colors.grey.shade400,
                  ),

                  const SizedBox(height: 18),

                  /// -------- BUTTONS --------
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: const [
                        _BtnRow(
                          'assets/images/btn_icon1.png',
                          'assets/images/btn_icon2.png',
                          'assets/images/btn_icon3.png',
                        ),
                        SizedBox(height: 8),
                        _BtnRow(
                          'assets/images/btn_icon4.png',
                          'assets/images/btn_icon5.png',
                          'assets/images/btn_icon6.png',
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  /// -------- NOTE + ICONES --------
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          '؟',
                          style: TextStyle(fontSize: 20),
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن مركز التحكم، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
                            style: GoogleFonts.cairo(
                              fontSize: 9,
                              height: 1.4,
                            ),
                          ),
                        ),
                        const SizedBox(width: 8),
                        Image.asset(
                          'assets/images/whatsy.png',
                          width: 22,
                          height: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// ================= FOOTER =================
          SizedBox(
            height: 40,
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
}

class _BtnRow extends StatelessWidget {
  final String a, b, c;
  const _BtnRow(this.a, this.b, this.c);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(a, width: 95, height: 90),
        Image.asset(b, width: 95, height: 90),
        Image.asset(c, width: 95, height: 90),
      ],
    );
  }
}
