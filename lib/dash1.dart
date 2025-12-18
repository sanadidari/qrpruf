import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
          /// ================= HEADER (IMAGE UNIQUE) =================
          SizedBox(
            height: _headerHeight,
            width: double.infinity,
            child: Image.asset(
              'assets/images/header.png', // image complète (logo + slogan)
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

                        /// LOGIN BLOCK (flèche alignée à la 2e ligne)
                        _LoginBlock(),

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

                  /// -------- HR (200px centré) --------
                  Center(
                    child: Container(
                      width: 200,
                      height: 1,
                      color: Colors.grey.shade400,
                    ),
                  ),

                  const SizedBox(height: 18),

                  /// -------- BUTTONS --------
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
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

                  /// -------- NOTE + 2 ICONES (ensemble à gauche) --------
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        /// Colonne icônes à gauche (whats + help)
                        Column(
                          children: [
                            Image.asset(
                              'assets/images/whatsy.png',
                              width: 22,
                              height: 22,
                            ),
                            const SizedBox(height: 6),
                            Image.asset(
                              'assets/images/helpy.png',
                              width: 22,
                              height: 22,
                            ),
                          ],
                        ),
                        const SizedBox(width: 10),

                        /// Texte (avec le ? au début, côté droit en RTL)
                        Expanded(
                          child: RichText(
                            textAlign: TextAlign.right,
                            text: TextSpan(
                              style: GoogleFonts.cairo(
                                fontSize: 9,
                                height: 1.4,
                                color: Colors.black,
                              ),
                              children: const [
                                TextSpan(text: '؟  '),
                                TextSpan(
                                  text:
                                      'ملاحظة: لا يحتفظ QRpruf بأي بيانات تعريفية أو بيومترية ضمن مركز التحكم، وتتم جميع عمليات التوثيق والتحقق بالاعتماد على أمان جهازك، دون تخزين أو معالجة لأي معطيات شخصية خارج الإطار القانوني الآمن.',
                                ),
                              ],
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

          /// ================= FOOTER =================
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
}

class _LoginBlock extends StatelessWidget {
  const _LoginBlock();

  @override
  Widget build(BuildContext context) {
    // Hauteur fixe pour pouvoir aligner la flèche exactement sur la 2e ligne
    const double blockHeight = 28;

    return SizedBox(
      height: blockHeight,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // Textes alignés à droite
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'إنشاء حساب',
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                  fontSize: 10,
                  color: Colors.grey.shade600,
                  height: 1.05,
                ),
              ),
              Text(
                'تسجيل الدخول',
                textAlign: TextAlign.right,
                style: GoogleFonts.cairo(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  height: 1.05,
                ),
              ),
            ],
          ),
          const SizedBox(width: 6),

          // Flèche alignée sur la 2e ligne (bas du bloc)
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              'assets/images/flechy.png',
              width: 18,
              height: 18,
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
