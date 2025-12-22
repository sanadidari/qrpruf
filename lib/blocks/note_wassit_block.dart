import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// 🧱 NOTE WASSIT BLOCK
///
/// - Note spécifique au système WASSIT
/// - Différente de la note Massar
/// - Aucune logique métier
/// - Aucune dépendance backend
///
/// Rôle :
/// - Informer l’utilisateur sur la responsabilité des moyens
/// - Préparer mentalement à la validation finale
/// - Cadre légal clair avant Supabase
class NoteWassitBlock extends StatelessWidget {
  const NoteWassitBlock({super.key});

  static const String _wassitLegalNote =
      'ملاحظة:\n'
      'لا يقوم نظام QRpruf بتخزين الوسائط التوثيقية داخل المنصة. '
      'جميع التسجيلات الصوتية، الصور، الفيديوهات، النصوص أو بيانات المسار '
      'تبقى تحت المسؤولية الكاملة للمستخدم، ويتم التعامل معها فقط كوسائل إثبات '
      'وفق آليات تحقق قانونية دون حفظ المحتوى أو نسخه.\n\n'
      'يتحمل المستخدم مسؤولية صحة المحتوى الموثق ومطابقته للوقائع.';

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// 🔹 TEXTE (RTL)
          Expanded(
            child: Text(
              _wassitLegalNote,
              textAlign: TextAlign.right,
              style: GoogleFonts.cairo(
                fontSize: 10,
                height: 1.6,
                color: Colors.black87,
              ),
            ),
          ),

          const SizedBox(width: 10),

          /// 🔹 ICÔNES (information / aide)
          Column(
            children: [
              Image.asset(
                'assets/images/whatsy.png',
                width: 22,
              ),
              const SizedBox(height: 6),
              Image.asset(
                'assets/images/helpy.png',
                width: 22,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
