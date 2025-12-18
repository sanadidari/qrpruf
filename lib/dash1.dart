import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dash1Page extends StatelessWidget {
  const Dash1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'تسجيل الدخول',
          style: GoogleFonts.cairo(
            color: Colors.black,
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      body: LayoutBuilder(
        builder: (context, constraints) {
          final bool isMobile = constraints.maxWidth < 600;

          return Column(
            children: [
              // HEADER IMAGE
              SizedBox(
                height: 120,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/header.png',
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 16),

              Text(
                'مركز التحكم التوثيقي',
                style: GoogleFonts.cairo(
                  fontSize: isMobile ? 20 : 24,
                  fontWeight: FontWeight.w800,
                  color: const Color(0xFF62A098),
                ),
              ),

              const SizedBox(height: 16),

              Text(
                'مسارات الاستخدام',
                style: GoogleFonts.cairo(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 6),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'اختر المسار الذي يناسب وضعك القانوني أو المهني للحصول على تجربة توثيق مخصصة ودقيقة داخل QRpruf.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.cairo(fontSize: 12),
                ),
              ),

              const SizedBox(height: 20),

              // GRID
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.count(
                  shrinkWrap: true,
                  crossAxisCount: isMobile ? 3 : 6,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                  physics: const NeverScrollableScrollPhysics(),
                  children: const [
                    _DashItem('الاستعمال الشخصي', Icons.person),
                    _DashItem('المهن المنظمة', Icons.settings),
                    _DashItem('الإدارات العمومية', Icons.apartment),
                    _DashItem('الهيئات المهنية', Icons.handshake),
                    _DashItem('المحامون والخبراء', Icons.gavel),
                    _DashItem('المؤسسات الخاصة', Icons.description),
                  ],
                ),
              ),

              const Spacer(),

              // FOOTER
              SizedBox(
                height: 40,
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
}

class _DashItem extends StatelessWidget {
  final String title;
  final IconData icon;

  const _DashItem(this.title, this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFEAF4F2),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: const Color(0xFFD6E5E1)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 28, color: const Color(0xFF62A098)),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: GoogleFonts.cairo(
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
