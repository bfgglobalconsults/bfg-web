import 'package:bfgglobal/core/widgets/footer/footer_desktop.dart';
import 'package:bfgglobal/core/widgets/footer/footer_moible.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const FooterMobile(),
      desktop: const FooterDesktop(),
    );
  }
}
