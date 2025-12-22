import 'package:flutter/material.dart';

import '../blocks/nav_block.dart';
import '../blocks/note_block.dart';

class PageTemplate extends StatelessWidget {
  final Widget body;
  final Widget header;
  final Widget footer;

  final VoidCallback? onBack;
  final VoidCallback? onNext;

  const PageTemplate({
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

                /// ZONE BASSE MASSAR
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showNav)
                      NavBlock(
                        onBack: onBack,
                        onNext: onNext,
                      ),

                    /// NOTE LÉGALE MASSAR
                    const NoteBlock(),

                    /// FOOTER
                    footer,
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
