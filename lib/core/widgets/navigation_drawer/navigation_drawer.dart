import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/routing/route_names.dart';
import 'package:bfgglobal/core/services/navigation_service.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:bfgglobal/core/widgets/navigation_drawer/nav_drawer_item.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:bfgglobal/locator.dart';
import 'package:provider/provider.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width,
      margin: EdgeInsets.all(Insets.sm),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Corners.mdRadius),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DrawerItem(
            title: "Home",
            icon: Assets.icons.twotone.home1,
            navigationPath: homeRoute,
          ),
          DrawerItem(
            title: "Shop",
            icon: Assets.icons.twotone.user,
            navigationPath: shopRoute,
          ),
          DrawerItem(
            title: "About",
            icon: Assets.icons.twotone.statusUp,
            navigationPath: aboutRoute,
          ),
          DrawerItem(
            title: "Contact",
            icon: Assets.icons.twotone.judge,
            navigationPath: contactRoute,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () => locator<NavigationService>().navigateTo(cartRoute),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LocalSvgIcon(
                      Assets.icons.linear.shoppingCart,
                    ),
                    const Gap(Insets.md),
                    const Text(
                      "Cart",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.md,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
                width: 2,
                color: Colors.grey.shade300,
                margin: const EdgeInsets.symmetric(horizontal: Insets.sm),
              ),
              InkWell(
                onTap: () =>
                    locator<NavigationService>().navigateTo(loginRoute),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Account",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.sm,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(Insets.md),
                    LocalSvgIcon(
                      Assets.icons.linear.user,
                    )
                  ],
                ),
              ),
            ],
          ),
          const Gap(Insets.md),
          // const SocialLinks(
          //   alignment: MainAxisAlignment.spaceEvenly,
          // ),
        ],
      ),
    );
  }
}
