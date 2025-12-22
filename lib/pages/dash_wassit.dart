import 'package:flutter/material.dart';

import '../layout/page_template_wassit.dart';
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

  void _onValidate(WassitType type) {
    setState(() {
      _validatedTypes.add(type);
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

      header: Image.asset(
        'assets/images/header_sec.png',
        fit: BoxFit.cover,
      ),
      footer: Image.asset(
        'assets/images/footer.png',
        fit: BoxFit.cover,
      ),

      body: Column(
        children: [
          /// ZONE 1 — SELECTEUR
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

          /// ZONE 2 — MOYEN ACTIF
          SizedBox(
            height: 320,
            child: _buildActiveWassit(),
          ),

          const Spacer(),
        ],
      ),
    );
  }

  Widget _buildActiveWassit() {
    switch (_activeType) {
      case WassitType.audio:
        return WassitAudioBlock(
          onValidate: () => _onValidate(WassitType.audio),
        );
      case WassitType.image:
        return WassitImageBlock(
          onValidate: () => _onValidate(WassitType.image),
        );
      case WassitType.video:
        return WassitVideoBlock(
          onValidate: () => _onValidate(WassitType.video),
        );
      case WassitType.text:
        return WassitTextBlock(
          onValidate: () => _onValidate(WassitType.text),
        );
      case WassitType.track:
        return WassitTrajetBlock(
          onValidate: () => _onValidate(WassitType.track),
        );
    }
  }
}
