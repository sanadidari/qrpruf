import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitTextBlock extends StatelessWidget {
  final VoidCallback onValidate;

  const WassitTextBlock({
    super.key,
    required this.onValidate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.06),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 HEADER TEXTE
          Text(
            'بيان مكتوب',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 16),

          /// 🔹 CHAMP TEXTE
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
            child: TextField(
              maxLines: 6,
              textAlign: TextAlign.right,
              decoration: InputDecoration(
                hintText: 'اكتب البيان التوثيقي هنا...',
                hintStyle: GoogleFonts.cairo(
                  fontSize: 12,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
              ),
              style: GoogleFonts.cairo(
                fontSize: 13,
                height: 1.6,
              ),
            ),
          ),

          const Spacer(),

          /// 🔹 VALIDATION TEXTE
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: onValidate,
              child: const Text('حفظ البيان'),
            ),
          ),
        ],
      ),
    );
  }
}
