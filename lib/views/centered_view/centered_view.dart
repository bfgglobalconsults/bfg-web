import 'package:bfgglobal/config/constants.dart';
import 'package:bfgglobal/core/utils/text_input.dart';
import 'package:bfgglobal/core/widgets/upper_nav_bar/upper_navbar.dart';
import 'package:flutter/material.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:bfgglobal/core/widgets/navigation_bar/navbar_logo.dart';
import 'package:bfgglobal/core/widgets/navigation_bar/navbar_tablet_desktop.dart';
import 'package:bfgglobal/core/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CenteredView extends StatefulWidget {
  final Widget child;

  const CenteredView({super.key, required this.child});

  @override
  State<CenteredView> createState() => _CenteredViewState();
}

class _CenteredViewState extends State<CenteredView> {
  bool showDrawer = false;

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizing) {
      return Center(
        child: Container(
          width: context.width,
          alignment: Alignment.bottomCenter,
          constraints: const BoxConstraints(maxWidth: 1400),
          child: Stack(
            children: [
              // const UpperNavbar(),

              widget.child,
              Positioned(
                // width: context.width,
                height: 60,
                top: 10,
                left: 0,
                right: 0,
                child: ScreenTypeLayout(
                  mobile: Container(
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
                              showDrawer = !showDrawer;
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
                  ),
                  desktop: const NavBarTabletDesktop(),
                ),
              ),
              // const NavBar(),
              showDrawer ? const NavigationDrawer() : const SizedBox.shrink(),
            ],
          ),
        ),
      );
    });
  }
}
