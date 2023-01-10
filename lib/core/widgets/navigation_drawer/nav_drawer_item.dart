import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/services/navigation_service.dart';
import 'package:bfgglobal/core/utils/extensions/hover_extensions.dart';
import 'package:bfgglobal/locator.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final String icon;
  final String navigationPath;
  const DrawerItem({
    super.key,
    required this.title,
    required this.icon,
    required this.navigationPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.md),
      child: InkWell(
        onTap: () {
          locator<NavigationService>().navigateTo(navigationPath);
        },
        child: Text(
          title,
          style: const TextStyle(
            color: AppColors.backgroundDark,
            fontSize: FontSizes.md,
            fontWeight: FontWeight.w600,
          ),
        ),
      ).showCursorOnHover.moveUpOnHover,
    );
  }
}
