import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:bfgglobal/core/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';

class NavBarMobile extends StatefulWidget {
  const NavBarMobile({
    super.key,
  });

  @override
  State<NavBarMobile> createState() => _NavBarMobileState();
}

class _NavBarMobileState extends State<NavBarMobile> {
  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context2) {
      return Container(
        height: 60,
        alignment: Alignment.center,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const NavbarLogo(),
            IconButton(
              padding: const EdgeInsets.all(2),
              onPressed: () {
                setState(() {
                  showDrawer = true;
                });
              },
              icon: LocalSvgIcon(
                showDrawer == true
                    ? Assets.icons.linear.closeSquare
                    : Assets.icons.bulk.menu,
                color: showDrawer == true
                    ? AppColors.error
                    : AppColors.primaryLight,
                size: 40,
              ),
            ),
          ],
        ),
      );
    });
  }
}
