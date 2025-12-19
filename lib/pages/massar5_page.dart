import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';
import '../blocks/title_block.dart';
import '../blocks/paragraph_block.dart';
import '../blocks/quote_block.dart';
import '../blocks/note_block.dart';
import '../blocks/nav_block.dart';

import 'massar1_page.dart';
import 'massar2_page.dart';
import 'massar3_page.dart';
import 'massar4_page.dart';

class Dash1Page extends StatelessWidget {
  const Dash1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      // ===== HEADER =====
      header: SizedBox(
        height: 65,
        width: double.infinity,
        child: Image.asset(
          'assets/images/header_sec.png',
          fit: BoxFit.cover,
        ),
      ),

      // ===== FOOTER =====
      footer: SizedBox(
        height: 40,
        width: double.infinity,
        child: Image.asset(
          'assets/images/footer.png',
          fit: BoxFit.cover,
        ),
      ),

      // ===== BODY =====
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// 🔹 TOP BAR (BLOC COMMUN)
            const TopBarBlock(),

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

            /// BUTTONS
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
                      _navBtn(context, 'assets/images/btn_icon1.png', Massar1Page()),
                      _navBtn(context, 'assets/images/btn_icon2.png', Massar2Page()),
                      _navBtn(context, 'assets/images/btn_icon3.png', Massar3Page()),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _navBtn(context, 'assets/images/btn_icon4.png', Massar4Page()),
                      Image.asset('assets/images/btn_icon5.png', width: 95, height: 90),
                      Image.asset('assets/images/btn_icon6.png', width: 95, height: 90),
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
                      Image.asset('assets/images/whatsy.png', width: 22),
                      const SizedBox(height: 6),
                      Image.asset('assets/images/helpy.png', width: 22),
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
