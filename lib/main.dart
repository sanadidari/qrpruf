import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const QRprufApp());
}

class QRprufApp extends StatelessWidget {
  const QRprufApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'QRpruf',
      theme: ThemeData(
        textTheme: GoogleFonts.cairoTextTheme(),
      ),
      builder: (context, child) {
        return Directionality(
          textDirection: TextDirection.rtl,
          child: DefaultTextStyle(
            style: GoogleFonts.cairo(),
            child: child!,
          ),
        );
      },
      home: const QRprufHome(),
    );
  }
}

class QRprufHome extends StatelessWidget {
  const QRprufHome({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5),
      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < 500;
          final double containerWidth =
              isMobile ? 360 : constraints.maxWidth * 0.8;

          return Center(
            child: Container(
              width: containerWidth,
              constraints: const BoxConstraints(maxWidth: 600),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 28,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: Column(
                children: [
                  /// CONTENU PRINCIPAL (s’adapte à la hauteur)
                  Expanded(
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: containerWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // HEADER
                            SizedBox(
                              height: 150,
                              child: Image.asset(
                                'assets/images/header.png',
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 12),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    height: 30,
                                    child: Image.asset(
                                        'assets/images/logo.png'),
                                  ),
                                  Row(
                                    children: [
                                      _buildIcon('assets/images/ico1.png'),
                                      const SizedBox(width: 6),
                                      _buildIcon('assets/images/ico2.png'),
                                      const SizedBox(width: 6),
                                      _buildIcon('assets/images/ico3.png'),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Container(
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF5F5F5),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    color: const Color(0xFFE0E0E0)),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.asset(
                                      'assets/images/img_accueil.png',
                                      height: 140,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  const Text(
                                    'مرحباً بك في QRpruf',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  const Text(
                                    'جيل جديد من التوثيق الرقمي يمنحك القدرة على تحويل كل واقعة مهما صغرت إلى دليل رقمي محكم.',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                            ),

                            const SizedBox(height: 10),

                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Column(
                                children: [
                                  const Text(
                                    'كل واقعة…تصبح إثباتًا',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w800,
                                      color: Color(0xFF62A098),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 6),
                                  Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          'يستعرض الفيديو التوضيحي التالي كيف تعمل هذه الآلية',
                                          style: TextStyle(fontSize: 11),
                                        ),
                                      ),
                                      const SizedBox(width: 8),
                                      Image.asset(
                                        'assets/images/anim_video.png',
                                        width: 90,
                                        height: 60,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Image.asset(
                                    'assets/images/cta.png',
                                    height: 55,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),

                  /// FOOTER FIXE
                  SizedBox(
                    height: 40,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/footer.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  static Widget _buildIcon(String asset) {
    return SizedBox(
      width: 22,
      height: 22,
      child: Image.asset(asset),
    );
  }
}
