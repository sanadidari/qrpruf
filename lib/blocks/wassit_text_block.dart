import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WassitTextBlock extends StatefulWidget {
  final VoidCallback onValidate;

  const WassitTextBlock({
    super.key,
    required this.onValidate,
  });

  @override
  State<WassitTextBlock> createState() => _WassitTextBlockState();
}

class _WassitTextBlockState extends State<WassitTextBlock> {
  final TextEditingController _controller = TextEditingController();
  final List<String> _draftTexts = [];

  void _addDraftText() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    setState(() {
      _draftTexts.add(text);
      _controller.clear();
    });
  }

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
          /// 🔹 HEADER — TEXTE
          Text(
            'بيان مكتوب',
            style: GoogleFonts.cairo(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: const Color(0xFF0C8172),
            ),
          ),

          const SizedBox(height: 12),

          /// 🔹 CHAMP TEXTE
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.grey.withOpacity(0.3)),
            ),
            child: TextField(
              controller: _controller,
              maxLines: 5,
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

          const SizedBox(height: 8),

          /// 🔹 AJOUT D’UN TEXTE (DRAFT)
          SizedBox(
            width: double.infinity,
            child: OutlinedButton.icon(
              onPressed: _addDraftText,
              icon: const Icon(Icons.add),
              label: Text(
                'إضافة البيان',
                style: GoogleFonts.cairo(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),

          const SizedBox(height: 12),

          /// 🔹 LISTE DES TEXTES AJOUTÉS
          if (_draftTexts.isNotEmpty)
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'البيانات المضافة:',
                  style: GoogleFonts.cairo(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xFF444444),
                  ),
                ),
                const SizedBox(height: 6),
                ..._draftTexts.map(
                  (t) => Padding(
                    padding: const EdgeInsets.only(bottom: 4),
                    child: Text(
                      '• $t',
                      style: GoogleFonts.cairo(
                        fontSize: 11,
                        color: const Color(0xFF444444),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.right,
                    ),
                  ),
                ),
              ],
            ),

          const Spacer(),

          /// 🔹 VALIDATION DU MOYEN TEXTE
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: widget.onValidate,
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0C8172),
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
              child: Text(
                'حفظ البيان',
                style: GoogleFonts.cairo(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
