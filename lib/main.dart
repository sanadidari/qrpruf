import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/dash1.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  /// 🔒 Orientation verrouillée (système)
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  runApp(const QRprufApp());
}

class QRprufApp extends StatelessWidget {
  const QRprufApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QRpruf',

      /// 🎨 Thème global
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(),
        scaffoldBackgroundColor: Colors.white,
      ),

      /// 🌍 RTL imposé système
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: DefaultTextStyle(
            style: GoogleFonts.cairo(),
            child: child!,
          ),
        );
      },

      /// 🚪 Entrée unique de l’application
      home: const Dash1Page(),
    );
  }
}
