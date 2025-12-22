import 'package:flutter/material.dart';

import '../blocks/wassit_note_block.dart';

class PageTemplateWassit extends StatelessWidget {
  final Widget body;
  final Widget header;
  final Widget footer;

  final VoidCallback? onBack;
  final VoidCallback? onNext;

  const PageTemplateWassit({
    super.key,
    required this.body,
    required this.header,
    required this.footer,
    this.onBack,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    final double topSafe = MediaQuery.of(context).viewPadding.top;
    final double bottomSafe = MediaQuery.of(context).viewPadding.bottom;

    final bool showNav = onBack != null || onNext != null;

    return Container(
      color: Colors.white,
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          /// SAFE TOP (système)
          SizedBox(height: topSafe),

          /// HEADER — HAUTEUR CANONIQUE
          SizedBox(
            height: 65,
            width: double.infinity,
            child: header,
          ),

          /// CONTENU PRINCIPAL
          Expanded(
            child: Column(
              children: [
                /// BODY
                Expanded(
                  child: body,
                ),

                /// ZONE BASSE WASSIT
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showNav)
                      _WassitNav(
                        onBack: onBack,
                        onNext: onNext,
                      ),

                    /// NOTE LÉGALE WASSIT
                    const WassitNoteBlock(),

                    /// FOOTER — HAUTEUR VERROUILLÉE
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: footer,
                    ),
                  ],
                ),
              ],
            ),
          ),

          /// SAFE BOTTOM (système)
          SizedBox(height: bottomSafe),
        ],
      ),
    );
  }
}

///
/// 🔒 NAVIGATION WASSIT DÉDIÉE
/// (séparée volontairement de Massar)
///
class _WassitNav extends StatelessWidget {
  final VoidCallback? onBack;
  final VoidCallback? onNext;

  const _WassitNav({
    this.onBack,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _navItem(
            icon: Icons.arrow_back,
            label: 'عودة',
            onTap: onBack,
          ),
          _navItem(
            icon: Icons.arrow_forward,
            label: 'التالي',
            onTap: onNext,
          ),
        ],
      ),
    );
  }

  Widget _navItem({
    required IconData icon,
    required String label,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Icon(icon, size: 34),
          const SizedBox(height: 6),
          Text(label),
        ],
      ),
    );
  }
}
