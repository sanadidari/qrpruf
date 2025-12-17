import 'package:flutter/material.dart';

class ControlCenterPage extends StatelessWidget {
  const ControlCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFEAF3F2),
        body: Center(
          child: SizedBox(
            width: 360,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                /// HEADER AVEC LOGO CORRECT
                Image.asset('assets/images/header.png'),

                Column(
                  children: [
                    const Text(
                      'مركز التحكم التوثيقي',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5A9E96),
                      ),
                    ),
                    const SizedBox(height: 16),

                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      children: const [
                        _Item('icon1.png', 'الاستعمال الشخصي'),
                        _Item('icon2.png', 'المهن المنظمة'),
                        _Item('icon3.png', 'الإدارات العمومية'),
                        _Item('icon4.png', 'الهيئات المهنية'),
                        _Item('icon5.png', 'القضاة والخبراء'),
                        _Item('icon6.png', 'المؤسسات الخاصة'),
                      ],
                    ),

                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/whats.png', width: 36),
                        const SizedBox(width: 12),
                        Image.asset('assets/images/contact.png', width: 36),
                      ],
                    ),
                  ],
                ),

                /// FOOTER (MANQUANT → AJOUTÉ)
                Image.asset('assets/images/footer.png'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _Item extends StatelessWidget {
  final String icon;
  final String label;

  const _Item(this.icon, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/$icon', width: 42),
          const SizedBox(height: 8),
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
