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
          /// ================= HEADER =================
          SizedBox(
            height: 60, // encore plus fin (HTML-like)
            width: double.infinity,
            child: Image.asset(
              'assets/images/header_sec.png',
              fit: BoxFit.contain,
              alignment: Alignment.topCenter,
            ),
          ),

          /// ================= CONTENT =================
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  /// -------- TOP BAR --------
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 25,
                      left: 10,
                      right: 15,
                      bottom: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/menu_deroul.png',
                          width: 25,
                          height: 25,
                        ),

                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'إنشاء حساب',
                                  style: GoogleFonts.cairo(
                                    fontSize: 10,
                                    height: 1.1,
                                    color: Colors.grey.shade600,
                                  ),
                                ),
                                Text(
                                  'تسجيل الدخول',
                                  style: GoogleFonts.cairo(
                                    fontSize: 11,
                                    height: 1.1,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 4), // plus serré
                            Image.asset(
                              'assets/images/flechy.png',
                              width: 18,
                              height: 18,
                            ),
                          ],
                        ),

                        Row(
                          children: [
                            Image.asset('assets/images/ico1.png',
                                width: 22, height: 22),
                            const SizedBox(width: 5),
                            Image.asset('assets/images/ico2.png',
                                width: 22, height: 22),
                            const SizedBox(width: 5),
                            Image.asset('assets/images/ico3.png',
                                width: 22, height: 22),
                          ],
                        ),
                      ],
                    ),
                  ),

                  /// -------- TITLES BLOCK --------
                  Expanded(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          color: const Color(0xFFEBF4F3),
                          padding:
                              const EdgeInsets.symmetric(vertical: 16),
                          margin:
                              const EdgeInsets.symmetric(vertical: 30),
                          child: Text(
                            'مركز التحكم التوثيقي',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.cairo(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF0C8172),
                            ),
                          ),
                        ),

                        Text(
                          'مســــارات الاستخـــدام',
                          style: GoogleFonts.cairo(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16),
                          child: Column(
                            children: [
                              Text(
                                'اختــر المسار الذي يناســب وضعــك القانونــي أو المهنـي للحصول علـى تجربة توثيـق مكيّفة ودقيقة داخل QRpruf.',
                                textAlign: TextAlign.center,
                                style: GoogleFonts.cairo(
                                  fontSize: 12,
                                  height: 1.7,
                                ),
                              ),
                              const SizedBox(height: 18),
                              Container(
                                width: 150,
                                height: 1,
                                color: Colors.grey.shade400,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  /// -------- BUTTONS --------
                  Container(
                    margin:
                        const EdgeInsets.fromLTRB(10, 20, 10, 45),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F5F5),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: const [
                            _BtnImg('assets/images/btn_icon1.png'),
                            _BtnImg('assets/images/btn_icon2.png'),
                            _BtnImg('assets/images/btn_icon3.png'),
                          ],
                        ),
                        const SizedBox(height: 8), // gap réduit
                        Row(
                          mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                          children: const [
                            _BtnImg('assets/images/btn_icon4.png'),
                            _BtnImg('assets/images/btn_icon5.png'),
                            _BtnImg('assets/images/btn_icon6.png'),
                          ],
                        ),
                      ],
                    ),
                  ),

                  /// -------- NOTE --------
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(
                              10, 30, 20, 0),
                          child: Text(
                            'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن مركز التحكم، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
                            style: GoogleFonts.cairo(
                              fontSize: 8.5,
                              height: 1.4,
                              color: const Color(0xFF333333),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Column(
                          children: [
                            Image.asset('assets/images/whatsy.png',
                                width: 20),
                            const SizedBox(height: 6),
                            Image.asset('assets/images/helpy.png',
                                width: 20),
                          ],
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

class _BtnImg extends StatelessWidget {
  final String asset;
  const _BtnImg(this.asset);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      asset,
      width: 95,
      height: 90, // légèrement plus large que haut
    );
  }
}
