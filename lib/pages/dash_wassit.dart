import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../layout/page_template_wassit.dart';
import '../blocks/topbar_block.dart';
import '../blocks/wassit_selector_block.dart';

// WASSIT BLOCKS
import '../blocks/wassit_audio_block.dart';
import '../blocks/wassit_image_block.dart';
import '../blocks/wassit_video_block.dart';
import '../blocks/wassit_text_block.dart';
import '../blocks/wassit_trajet_block.dart';

import 'wassit_summary_page.dart';

class DashWassitPage extends StatefulWidget {
  const DashWassitPage({super.key});

  @override
  State<DashWassitPage> createState() => _DashWassitPageState();
}

class _DashWassitPageState extends State<DashWassitPage> {
  WassitType _activeType = WassitType.audio;
  final Set<WassitType> _validatedTypes = {};

  void _validateCurrent() {
    setState(() {
      _validatedTypes.add(_activeType);
    });
  }

  @override
  Widget build(BuildContext context) {
    return PageTemplateWassit(
      onBack: () => Navigator.pop(context),
      onNext: _validatedTypes.isEmpty
          ? null
          : () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => WassitSummaryPage(
                     validatedTypes: _validatedTypes,
                  ),
                ),
              );
            },

      /// HEADER IMAGE
      header: Image.asset(
        'assets/images/header_sec.png',
        fit: BoxFit.cover,
      ),

      /// FOOTER IMAGE
      footer: Image.asset(
        'assets/images/footer.png',
        fit: BoxFit.cover,
      ),

      /// BODY
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          children: [
            /// TOP BAR
            const TopBarBlock(),

            /// TITRE WASSIT (OBLIGATOIRE)
            ///Container(
            ///  width: double.infinity,
            ///  margin: const EdgeInsets.symmetric(vertical: 18),
            ///  padding: const EdgeInsets.symmetric(vertical: 14),
            ///  color: const Color(0xFFEBF4F3),
            ///  child: Text(
            ///    'مرحلة جمع وسائل الإثبات',
            ///    textAlign: TextAlign.center,
            ///    style: GoogleFonts.cairo(
            ///      fontSize: 22,
            ///      fontWeight: FontWeight.w700,
            ///      color: const Color(0xFF0C8172),
            ///    ),
            ///  ),
            ///),

            /// SELECTEUR WASSIT
            WassitSelectorBlock(
              activeType: _activeType,
              validatedTypes: _validatedTypes,
              onSelect: (type) {
                setState(() {
                  _activeType = type;
                });
              },
            ),

            const SizedBox(height: 24),

            /// ZONE CENTRALE
            SizedBox(
              height: 320,
              child: _buildActiveWassit(),
            ),

            const SizedBox(height: 12),

            /// 🧪 BOUTON TEST (À SUPPRIMER PLUS TARD)
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: _validateCurrent,
                child: const Text('🧪 TEST : Valider ce moyen'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActiveWassit() {
    switch (_activeType) {
      case WassitType.track:
        return WassitTrajetBlock(onValidate: _validateCurrent);
      case WassitType.text:
        return WassitTextBlock(onValidate: _validateCurrent);
      case WassitType.video:
        return WassitVideoBlock(onValidate: _validateCurrent);
      case WassitType.image:
        return WassitImageBlock(onValidate: _validateCurrent);
      case WassitType.audio:
        return WassitAudioBlock(onValidate: _validateCurrent);
    }
  }
}
