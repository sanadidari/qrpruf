import 'package:flutter/material.dart';

import '../layout/page_template.dart';
import '../blocks/topbar_block.dart';

import 'massar1_page.dart';
import 'massar2_page.dart';
import 'massar3_page.dart';
import 'massar4_page.dart';
import 'massar5_page.dart';
import 'massar6_page.dart';

class Dash1Page extends StatelessWidget {
  const Dash1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return PageTemplate(
      // ===== HEADER SYSTÈME =====
      header: const TopBarBlock(),

      // ===== FOOTER =====
      footer: const SizedBox.shrink(),

      // ===== BODY =====
      body: SizedBox(
        height: 520, // 🔒 hauteur verrouillée (système)
        child: Column(
          children: [
            /// TITRE
            Container(
              width: double.infinity,
              color: const Color(0xFFEBF4F3),
              padding: const EdgeInsets.symmetric(vertical: 14),
              child: const Text(
                'مركز التحكم التوثيقي',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0C8172),
                ),
              ),
            ),

            const SizedBox(height: 18),

            const Text(
              'مسارات الاستخدام',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 8),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'اختر المسار الذي يناسب وضعك القانوني أو المهني للحصول على تجربة توثيق مكيّفة ودقيقة داخل QRpruf.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 12,
                  height: 1.7,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Container(
              width: 200,
              height: 1,
              color: Colors.grey,
            ),

            const SizedBox(height: 18),

            /// BOUTONS MASSAR
            SizedBox(
              height: 230,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _navBtn(context, 'assets/images/btn_icon1.png', Massar1Page()),
                      _navBtn(context, 'assets/images/btn_icon2.png', Massar2Page()),
                      _navBtn(context, 'assets/images/btn_icon3.png', Massar3Page()),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _navBtn(context, 'assets/images/btn_icon4.png', Massar4Page()),
                      _navBtn(context, 'assets/images/btn_icon5.png', Massar5Page()),
                      _navBtn(context, 'assets/images/btn_icon6.png', Massar6Page()),
                    ],
                  ),
                ],
              ),
            ),

            const Spacer(),
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
