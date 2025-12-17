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
      title: 'QRpruf',
      debugShowCheckedModeBanner: false,
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
      home: const Directionality(
        textDirection: TextDirection.rtl,
        child: QRprufHome(),
      ),
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
      body: Center(
        child: Container(
          width: 360,
          height: 800,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 28,
                offset: const Offset(0, 10),
              )
            ],
          ),
          child: Column(
            children: [
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/header.png',
                  fit: BoxFit.cover,
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
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
                                const SizedBox(width: 5),
                                _buildIcon('assets/images/ico2.png'),
                                const SizedBox(width: 5),
                                _buildIcon('assets/images/ico3.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
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
                                'assets/images/phPrinc1.png',
                                height: 150,
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(height: 12),
                            const Text(
                              'مرحباً بك في QRpruf',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF222222),
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
                            const SizedBox(height: 6),
                            const Text.rich(
                              TextSpan(
                                text: 'هنا يبدأ ',
                                style: TextStyle(
                                  fontSize: 12,
                                  height: 1.7,
                                  color: Color(0xFF333333),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'عالم تُصان فيه الحقيقة،',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: ' وتُوثّق فيه حقوقك بمعايير موثوقية غير مسبوقة.',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 8),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          children: [
                            const Text(
                              'كل واقعة…تصبح إثباتًا',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF62A098),
                                height: 1.4,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 8),
                            Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'يستعــرض الفيـديـــــو التوضيحي التالي كيف تعمل هذه الآلية بدقة',
                                      style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.grey.shade800,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(6),
                                    child: Image.asset(
                                      'assets/images/Video.png',
                                      width: 110,
                                      height: 70,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                'assets/images/CTA.png',
                                width: double.infinity,
                                height: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                    ],
                  ),
                ),
              ),
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
      ),
    );
  }

  Widget _buildIcon(String assetPath) {
    return Container(
      width: 22,
      height: 22,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(assetPath),
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
