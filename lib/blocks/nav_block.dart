import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavBlock extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback? onNext;

  const NavBlock({super.key, this.onBack, this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _navItem('assets/images/ic2.png', 'عودة', onBack),
          _navItem('assets/images/ic3.png', 'التالي', onNext),
        ],
      ),
    );
  }

  Widget _navItem(String img, String label, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Image.asset(img, width: 48),
          const SizedBox(height: 6),
          Text(label, style: GoogleFonts.cairo(fontSize: 11)),
        ],
      ),
    );
  }
}
