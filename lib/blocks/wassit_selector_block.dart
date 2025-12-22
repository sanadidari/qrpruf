import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum WassitType {
  audio,
  image,
  video,
  text,
  track,
}

class WassitSelectorBlock extends StatelessWidget {
  final WassitType activeType;
  final Set<WassitType> validatedTypes;
  final ValueChanged<WassitType> onSelect;

  const WassitSelectorBlock({
    super.key,
    required this.activeType,
    required this.validatedTypes,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 6),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start, // 🔒 alignement unique
            children: [
              _WassitItem(
                type: WassitType.audio,
                icon: 'assets/images/wassit1.png',
                label: 'مقطع صوتي',
                activeType: activeType,
                validatedTypes: validatedTypes,
                onSelect: onSelect,
              ),
              _WassitItem(
                type: WassitType.image,
                icon: 'assets/images/wassit2.png',
                label: 'لقطة صورة',
                activeType: activeType,
                validatedTypes: validatedTypes,
                onSelect: onSelect,
              ),
              _WassitItem(
                type: WassitType.video,
                icon: 'assets/images/wassit3.png',
                label: 'شريط فيديو',
                activeType: activeType,
                validatedTypes: validatedTypes,
                onSelect: onSelect,
              ),
              _WassitItem(
                type: WassitType.text,
                icon: 'assets/images/wassit4.png',
                label: 'بيان مكتوب',
                activeType: activeType,
                validatedTypes: validatedTypes,
                onSelect: onSelect,
              ),
              _WassitItem(
                type: WassitType.track,
                icon: 'assets/images/wassit5.png',
                label: 'تسجيل المسار',
                activeType: activeType,
                validatedTypes: validatedTypes,
                onSelect: onSelect,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _WassitItem extends StatelessWidget {
  final WassitType type;
  final String icon;
  final String label;
  final WassitType activeType;
  final Set<WassitType> validatedTypes;
  final ValueChanged<WassitType> onSelect;

  const _WassitItem({
    required this.type,
    required this.icon,
    required this.label,
    required this.activeType,
    required this.validatedTypes,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    final bool isActive = activeType == type;
    final bool isValidated = validatedTypes.contains(type);

    return GestureDetector(
      onTap: () => onSelect(type),
      child: Padding(
        padding: const EdgeInsets.only(left: 3),
        child: SizedBox(
          width: 58, // 🔒 largeur identique pour TOUS
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: isActive ? const Color(0xFFDFF1EE) : Colors.white,
                  border: Border.all(
                    color: isValidated
                        ? const Color(0xFF0C8172)
                        : const Color(0xFFE0E0E0),
                    width: isValidated ? 2 : 1,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    icon,
                    // 🔥🔥🔥 TAILLE MAX ABSOLUE
                    width: 52,
                    height: 52,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              const SizedBox(height: 3),
              Text(
                label,
                textAlign: TextAlign.center,
                maxLines: 1, // 🔒 UNE SEULE LIGNE POUR TOUS
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.cairo(
                  fontSize: 9.8,
                  height: 1.0,
                  color: const Color(0xFF444444),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
