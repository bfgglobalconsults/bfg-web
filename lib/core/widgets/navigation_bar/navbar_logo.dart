import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/utils/extensions/hover_extensions.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:bfgglobal/locator.dart';
import 'package:bfgglobal/core/routing/route_names.dart';
import 'package:bfgglobal/core/services/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: InkWell(
        onTap: () {
          locator<NavigationService>().navigateTo(homeRoute);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  height: 32,
                  image: AssetImage(
                    Assets.images.logo.path,
                  )),
            ],
          ),
        ),
      ),
      desktop: InkWell(
        onTap: () {
          locator<NavigationService>().navigateTo(homeRoute);
        },
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                height: 32,
                image: AssetImage(
                  Assets.images.logo.path,
                )),
          ],
        ).showCursorOnHover,
      ),
    );
  }
}
