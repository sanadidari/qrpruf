import 'package:flutter/material.dart';

class HomeQRPrufScreen extends StatelessWidget {
  const HomeQRPrufScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: const Color(0xFFE5E5E5),
        body: SafeArea(
          child: Column(
            children: [
              // Header
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/header.png',
                  fit: BoxFit.cover,
                ),
              ),

              // Content
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      _buildTopBar(),
                      const SizedBox(height: 10),
                      _buildLargeCard(),
                      _buildSmallCard(),
                    ],
                  ),
                ),
              ),

              // Footer
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

  Widget _buildTopBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset('assets/images/Logo.png', height: 30),
          Row(
            children: [
              Image.asset('assets/images/ico1.png', height: 22),
              const SizedBox(width: 5),
              Image.asset('assets/images/ico2.png', height: 22),
              const SizedBox(width: 5),
              Image.asset('assets/images/ico3.png', height: 22),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLargeCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey.shade300),
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
            style: TextStyle(fontWeight: FontWeight.w800, fontSize: 15),
          ),
          const SizedBox(height: 6),
          const Text(
            'جيل جديد من التوثيق الرقمي يمنحك القدرة على تحويل كل واقعة مهما صغرت إلى دليل رقمي محكم، آمن، ومقبول تقنياً وقانونياً.',
            style: TextStyle(fontSize: 12, height: 1.7),
          ),
          const Text(
            'هنا يبدأ عالم تُصان فيه الحقيقة، وتُوثّق فيه حقوقك بمعايير موثوقية غير مسبوقة.',
            style: TextStyle(fontSize: 12, height: 1.7),
          ),
        ],
      ),
    );
  }

  Widget _buildSmallCard() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          const Text(
            'كل واقعة…تصبح إثباتًا',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w800,
              color: Color(0xFF62A098),
            ),
          ),
          const SizedBox(height: 10),
          Row(
            children: [
              const Expanded(
                child: Text(
                  'يستعــرض الفيـديـــــو التوضيحي التالي كيف تعمل هذه الآلية بدقة',
                  style: TextStyle(fontSize: 11, color: Color(0xFF444444)),
                ),
              ),
              const SizedBox(width: 10),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: Image.asset(
                  'assets/images/Video.png',
                  height: 70,
                  width: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              'assets/images/CTA.png',
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
}
