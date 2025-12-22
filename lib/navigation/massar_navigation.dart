import 'package:flutter/material.dart';

import '../pages/dash_wassit.dart';

/// 🚀 Sortie universelle Massar → WASSIT
///
/// Règle système :
/// Toutes les pages Massar utilisent CETTE fonction
/// pour la navigation "التالي".
void goToWassit(BuildContext context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => const DashWassitPage(),
    ),
  );
}
