import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TopBarBlock extends StatelessWidget {
  const TopBarBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
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
              Image.asset('assets/images/ico1.png', width: 22, height: 22),
              const SizedBox(width: 6),
              Image.asset('assets/images/ico2.png', width: 22, height: 22),
              const SizedBox(width: 6),
              Image.asset('assets/images/ico3.png', width: 22, height: 22),
            ],
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
    return SizedBox(
      height: 28,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'إنشاء حساب',
                style: GoogleFonts.cairo(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
                'تسجيل الدخول',
                style: GoogleFonts.cairo(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(width: 6),
          Image.asset('assets/images/flechy.png', width: 18),
        ],
      ),
    );
  }
}
