import 'package:gap/gap.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/routing/route_names.dart';
import 'package:bfgglobal/core/services/navigation_service.dart';
import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:bfgglobal/locator.dart';
import 'package:provider/provider.dart';

class NavButton extends StatelessWidget {
  final CrossAxisAlignment? alignment;

  const NavButton({
    Key? key,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        locator<NavigationService>().navigateTo(cartRoute);
      },
      child: Container(
          // width: 100,
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: Insets.lg),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: alignment ?? CrossAxisAlignment.end,
            children: [
              InkWell(
                onTap: () => locator<NavigationService>().navigateTo(cartRoute),
                child: Row(
                  children: [
                    const Text(
                      "Cart",
                      style: TextStyle(
                        color: AppColors.primaryColor,
                        fontSize: FontSizes.sm,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(Insets.md),
                    LocalSvgIcon(
                      Assets.icons.linear.shoppingCart,
                    )
                  ],
                ),
              ),
              Gap(alignment == CrossAxisAlignment.center ? 10 : 3),
              InkWell(
                onTap: () =>
                    locator<NavigationService>().navigateTo(loginRoute),
                child: Row(
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
          )),
    );
  }
}
