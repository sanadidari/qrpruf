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
        return DefaultTextStyle(
          style: GoogleFonts.cairo(),
          child: Directionality(
            textDirection: TextDirection.rtl,
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
              height: constraints.maxHeight,
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
                  // ================= HEADER =================
                  SizedBox(
                    height: 150,
                    width: double.infinity,
                    child: Image.asset(
                      'assets/images/header.png',
                      fit: BoxFit.cover,
                    ),
                  ),

                  // ================= CONTENT =================
                  Expanded(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                height: 30,
                                child: Image.asset('assets/images/logo.png'),
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

                        // CARD
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 16),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xFFF5F5F5),
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: const Color(0xFFE0E0E0)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(6),
                                child: Image.asset(
                                  'assets/images/img_accueil.png',
                                  height: 150,
                                  width: double.infinity,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              const SizedBox(height: 12),
                              Text(
                                'مرحباً بك في QRpruf',
                                style: TextStyle(
                                  fontSize: isMobile ? 15 : 18,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF222222),
                                ),
                              ),
                              const SizedBox(height: 6),
                              const Text(
                                'جيل جديد من التوثيق الرقمي يمنحك القدرة على تحويل كل واقعة مهما صغرت إلى دليل رقمي محكم، آمن، ومقبول تقنياً وقانونياً.',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 1.7,
                                  color: Color(0xFF333333),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 10),

                        // VIDEO + CTA
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Column(
                            children: [
                              Text(
                                'كل واقعة…تصبح إثباتًا',
                                style: TextStyle(
                                  fontSize: isMobile ? 18 : 22,
                                  fontWeight: FontWeight.w800,
                                  color: const Color(0xFF62A098),
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
                                        fontSize: isMobile ? 11 : 13,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Image.asset(
                                    'assets/images/anim_video.png',
                                    width: 110,
                                    height: 70,
                                    fit: BoxFit.cover,
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Image.asset(
                                'assets/images/cta.png',
                                height: 60,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),

                        // 🔑 ESPACE FLEXIBLE AVANT FOOTER
                        const Spacer(),
                      ],
                    ),
                  ),

                  // ================= FOOTER =================
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

  Widget _buildIcon(String asset) {
    return SizedBox(
      width: 22,
      height: 22,
      child: Image.asset(asset),
    );
  }
}
	