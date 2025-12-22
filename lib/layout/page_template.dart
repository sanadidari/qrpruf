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
    final topSafe = MediaQuery.of(context).viewPadding.top;
    final bottomSafe = MediaQuery.of(context).viewPadding.bottom;

    final bool showNav = onBack != null || onNext != null;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: topSafe),

          /// 🔹 HEADER — HAUTEUR CANONIQUE SYSTÈME (65)
          SizedBox(
            height: 65,
            width: double.infinity,
            child: header,
          ),

          /// 🔹 CONTENU
          Expanded(
            child: Column(
              children: [
                Expanded(child: body),

                /// 🔒 ZONE BASSE
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (showNav)
                      NavBlock(
                        onBack: onBack,
                        onNext: onNext,
                      ),
                    const NoteBlock(),
                    footer,
                  ],
                ),
              ],
            ),
          ),

          SizedBox(height: bottomSafe),
        ],
      ),
    );
  }
}
