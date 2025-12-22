import 'package:flutter/material.dart';

class FooterWassitBlock extends StatelessWidget {
  const FooterWassitBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey.withOpacity(0.2)),
        ),
      ),
    );
  }
}
