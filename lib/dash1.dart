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
          /// ================= HEADER RECONSTRUIT =================
          Container(
            height: 65,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/header_sec.png'),
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    height: 28,
                  ),
                  Text(
                    'دليلك الرقمي الموثوق أينما كنت',
                    style: GoogleFonts.cairo(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF2F4F4F),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// ================= TOP BAR =================
          Padding(
            padding:
                const EdgeInsets.only(top: 18, left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/menu_deroul.png',
                  width: 24,
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
                          ),
                        ),
                        Text(
                          'تسجيل الدخول',
                          style: GoogleFonts.cairo(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 4),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2),
                      child: Image.asset(
                        'assets/images/flechy.png',
                        width: 18,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Image.asset('assets/images/ico1.png', width: 22),
                    const SizedBox(width: 6),
                    Image.asset('assets/images/ico2.png', width: 22),
                    const SizedBox(width: 6),
                    Image.asset('assets/images/ico3.png', width: 22),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 30),

          /// ================= TITLE =================
          Container(
            width: double.infinity,
            color: const Color(0xFFEBF4F3),
            padding: const EdgeInsets.symmetric(vertical: 14),
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

          const SizedBox(height: 18),

          Text(
            'مســــارات الاستخـــدام',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'اختــر المسار الذي يناســب وضعــك القانونــي أو المهنـي للحصول علـى تجربة توثيـق مكيّفة ودقيقة داخل QRpruf.',
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(fontSize: 12, height: 1.7),
            ),
          ),

          const SizedBox(height: 16),

          /// ===== HR =====
          Container(
            width: 150,
            height: 1,
            color: Colors.grey.shade400,
          ),

          const SizedBox(height: 20),

          /// ================= BUTTONS =================
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
