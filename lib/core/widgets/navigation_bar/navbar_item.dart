import 'package:gap/gap.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:bfgglobal/locator.dart';
import 'package:bfgglobal/core/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:bfgglobal/core/utils/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String label;
  final String navigationPath;
  final String icon;

  const NavBarItem({
    super.key,
    required this.label,
    required this.navigationPath,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: Insets.sm),
      child: InkWell(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Row(
          children: [
            LocalSvgIcon(icon),
            const Gap(Insets.sm),
            Text(
              label,
              style: const TextStyle(
                color: Colors.black87,
                fontSize: 12,
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ).showCursorOnHover,
    );
  }
}
