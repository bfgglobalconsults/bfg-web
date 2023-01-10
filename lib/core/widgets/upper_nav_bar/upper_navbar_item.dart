import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class UpperNavbarItem extends StatelessWidget {
  final String icon, title, subtitle;

  const UpperNavbarItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LocalSvgIcon(
          icon,
          size: 42,
        ),
        const Gap(Insets.md),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.baskervville(
                fontSize: 11,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 18,
                color: AppColors.primaryColor,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        )
      ],
    );
  }
}
