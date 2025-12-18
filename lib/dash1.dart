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
          /// ================= HEADER (HEIGHT REDUCED) =================
          SizedBox(
            height: 115, // ⬅️ réduit
            width: double.infinity,
            child: Image.asset(
              'assets/images/header_sec.png',
              fit: BoxFit.cover,
            ),
          ),

          /// ================= TOP BAR =================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/menu_deroul.png',
                  height: 22,
                ),
                Column(
                  children: [
                    Text(
                      'إنشاء حساب',
                      style: GoogleFonts.cairo(
                        fontSize: 10,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/flechy.png',
                          height: 14,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          'تسجيل الدخول',
                          style: GoogleFonts.cairo(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/images/helpy.png', height: 18),
                    const SizedBox(width: 12),
                    Image.asset('assets/images/logo.png', height: 18),
                    const SizedBox(width: 12),
                    Image.asset('assets/images/whatsy.png', height: 18),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 16),

          /// ================= TITLES =================
          Text(
            'مركز التحكم التوثيقي',
            style: GoogleFonts.cairo(
              fontSize: 22,
              fontWeight: FontWeight.w800,
              color: const Color(0xFF6FAFA4), // 🎨 ajusté
            ),
          ),

          const SizedBox(height: 14),

          Text(
            'مسارات الاستخدام',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: const Color(0xFF555555), // 🎨 gris foncé
            ),
          ),

          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 26),
            child: Text(
              'اختر المسار الذي يناسب وضعك القانوني أو المهني للحصول على تجربة توثيق مخصصة ودقيقة داخل QRpruf.',
              textAlign: TextAlign.center,
              style: GoogleFonts.cairo(
                fontSize: 12,
                height: 1.8, // 📐 interligne augmenté
                color: Colors.grey.shade700,
              ),
            ),
          ),

          const SizedBox(height: 22),

          /// ================= GRID BUTTONS =================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GridView.count(
              shrinkWrap: true,
              crossAxisCount: 3,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              childAspectRatio: 1.05, // 📐 boutons plus larges
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                _DashBtn('assets/images/btn_icon1.png', 'الاستعمال الشخصي'),
                _DashBtn('assets/images/btn_icon2.png', 'المهن المنظمة'),
                _DashBtn('assets/images/btn_icon3.png', 'الإدارات العمومية'),
                _DashBtn('assets/images/btn_icon4.png', 'المؤسسات الخاصة'),
                _DashBtn('assets/images/btn_icon5.png', 'المحامون والخبراء'),
                _DashBtn('assets/images/btn_icon6.png', 'الهيئات المهنية'),
              ],
            ),
          ),

          const SizedBox(height: 18),

          /// ================= BOTTOM NOTE =================
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '؟',
                  style: TextStyle(fontSize: 20),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Text(
                    'ملاحظة: منصة QRpruf لا تمنح أي صفة قانونية، بل توفر وسيلة تقنية محايدة لتسجيل وحفظ الأدلة الرقمية.',
                    style: GoogleFonts.cairo(
                      fontSize: 11,
                      height: 1.7,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Image.asset(
                  'assets/images/whatsy.png',
                  height: 20,
                ),
              ],
            ),
          ),

          const Spacer(),

          /// ================= FOOTER =================
          SizedBox(
            height: 38,
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

class _DashBtn extends StatelessWidget {
  final String image;
  final String label;

  const _DashBtn(this.image, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEEF7F5), // 🎨 fond plus pastel
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFD9ECE7)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 40),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              fontSize: 11,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
