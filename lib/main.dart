import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/dash1.dart' as pages; // ✅ MODIF 1 : alias

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
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;
          final bool isMobile = width < 600;
          final bool isDesktop = width >= 1024;

          final double maxContentWidth =
              isDesktop ? 1100 : double.infinity;

          return Column(
            children: [
              Expanded(
                child: Center(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: maxContentWidth,
                    ),
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.topCenter,
                      child: SizedBox(
                        width: maxContentWidth.isInfinite
                            ? width
                            : maxContentWidth,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: isMobile ? 130 : 160,
                              child: Image.asset(
                                'assets/images/header.png',
                                fit: BoxFit.cover,
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                horizontal: isMobile ? 16 : 24,
                                vertical: 12,
                              ),
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
                                      _buildIcon(
                                          'assets/images/ico1.png'),
                                      const SizedBox(width: 8),
                                      _buildIcon(
                                          'assets/images/ico2.png'),
                                      const SizedBox(width: 8),
                                      _buildIcon(
                                          'assets/images/ico3.png'),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      isMobile ? 16 : 24),
                              child: Container(
                                padding:
                                    const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color:
                                      const Color(0xFFF5F5F5),
                                  borderRadius:
                                      BorderRadius.circular(12),
                                  border: Border.all(
                                    color: const Color(
                                        0xFFE0E0E0),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius:
                                          BorderRadius.circular(8),
                                      child: Image.asset(
                                        'assets/images/img_accueil.png',
                                        height:
                                            isMobile ? 140 : 180,
                                        width:
                                            double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'مرحباً بك في QRpruf',
                                      style: TextStyle(
                                        fontSize:
                                            isMobile ? 16 : 18,
                                        fontWeight:
                                            FontWeight.w800,
                                      ),
                                    ),
                                    const SizedBox(height: 6),
                                    Text(
                                      'جيل جديد من التوثيق الرقمي يمنحك القدرة على تحويل كل واقعة مهما صغرت إلى دليل رقمي محكم، آمن، ومقبول تقنياً وقانونياً.',
                                      style: TextStyle(
                                        fontSize:
                                            isMobile ? 12 : 13,
                                        height: 1.6,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                            const SizedBox(height: 14),

                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      isMobile ? 16 : 24),
                              child: Column(
                                children: [
                                  Text(
                                    'كل واقعة…تصبح إثباتًا',
                                    style: TextStyle(
                                      fontSize:
                                          isMobile ? 18 : 22,
                                      fontWeight:
                                          FontWeight.w800,
                                      color: const Color(
                                          0xFF62A098),
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 8),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                          'يستعرض الفيديو التوضيحي التالي كيف تعمل هذه الآلية بدقة',
                                          style: TextStyle(
                                            fontSize:
                                                isMobile
                                                    ? 11
                                                    : 13,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Image.asset(
                                        'assets/images/anim_video.png',
                                        width:
                                            isMobile ? 90 : 120,
                                        height:
                                            isMobile ? 60 : 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 12),

                                  /// CTA → DASHBOARD
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (_) =>
                                              const pages.Dash1Page(), // ✅ MODIF 2
                                        ),
                                      );
                                    },
                                    child: Image.asset(
                                      'assets/images/cta.png',
                                      height:
                                          isMobile ? 55 : 65,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(
                height: 42,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/footer.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
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
