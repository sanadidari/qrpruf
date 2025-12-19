import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'massar1_page.dart';
import 'massar2_page.dart';
import 'massar3_page.dart';
import 'massar4_page.dart';

class Dash1Page extends StatelessWidget {
  const Dash1Page({super.key});

  static const double _headerHeight = 65;
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

          /// ===== BODY =====
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// TOP BAR
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
                        const _LoginBlock(),
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

                  /// TITLE
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

                  Center(
                    child: Container(
                      width: 200,
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),

                  const SizedBox(height: 18),

                  /// ===== BUTTONS =====
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _navBtn(
                              context,
                              'assets/images/btn_icon1.png',
                              Massar1Page(),
                            ),
                            _navBtn(
                              context,
                              'assets/images/btn_icon2.png',
                              Massar2Page(),
                            ),
                            /// ✅ BTN 3 → Massar3Page (FIX)
                            _navBtn(
                              context,
                              'assets/images/btn_icon3.png',
                              Massar3Page(),
                            ),
                          ],
                        ),

                        const SizedBox(height: 8),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            _navBtn(
                              context,
                              'assets/images/btn_icon4.png',
                              Massar3Page(),
                            ),
                            Image.asset(
                              'assets/images/btn_icon5.png',
                              width: 95,
                              height: 90,
                            ),
                            Image.asset(
                              'assets/images/btn_icon6.png',
                              width: 95,
                              height: 90,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const Spacer(),

                  /// NOTE
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
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
                        const SizedBox(width: 10),
                        Expanded(
                          child: Text(
                            'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن مركز التحكم، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك.',
                            textAlign: TextAlign.right,
                            style: GoogleFonts.cairo(
                              fontSize: 9,
                              height: 1.4,
                            ),
                          ),
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

  Widget _navBtn(BuildContext context, String asset, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => page),
        );
      },
      child: Image.asset(asset, width: 95, height: 90),
    );
  }
}

class _LoginBlock extends StatelessWidget {
  const _LoginBlock();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 28,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('إنشاء حساب',
                  style: GoogleFonts.cairo(
                      fontSize: 10, color: Colors.grey)),
              Text('تسجيل الدخول',
                  style: GoogleFonts.cairo(
                      fontSize: 12, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(width: 6),
          Image.asset('assets/images/flechy.png', width: 18),
        ],
      ),
    );
  }
}
