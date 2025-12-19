import 'package:flutter/material.dart';

class PageTemplate extends StatelessWidget {
  final Widget body;
  final Widget header;
  final Widget footer;

  const PageTemplate({
    super.key,
    required this.body,
    required this.header,
    required this.footer,
  });

  @override
  Widget build(BuildContext context) {
    final topSafe = MediaQuery.of(context).viewPadding.top;
    final bottomSafe = MediaQuery.of(context).viewPadding.bottom;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          SizedBox(height: topSafe),
          header,
          Expanded(child: body),
          footer,
          SizedBox(height: bottomSafe),
        ],
      ),
    );
  }
}
