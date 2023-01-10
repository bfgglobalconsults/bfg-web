import 'package:bfgglobal/config/constants.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/widgets/navigation_bar/navbar_logo.dart';
import 'package:bfgglobal/core/widgets/upper_nav_bar/upper_navbar_item.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:flutter/material.dart';

class UpperNavbar extends StatelessWidget {
  const UpperNavbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(Insets.xl),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          NavbarLogo(),
          Expanded(child: SizedBox()),
          Row(
            children: [
              UpperNavbarItem(
                icon: Assets.icons.bulk.callIncoming,
                title: 'Request Callback',
                subtitle: supportPhoneNumber,
              ),
              UpperNavbarItem(
                icon: Assets.icons.bulk.timerStart,
                title: 'Monday - Friday',
                subtitle: '8AM - 5PM',
              ),
              UpperNavbarItem(
                icon: Assets.icons.bulk.locationTick,
                title: 'Suite D02, Kenuj02 Mall',
                subtitle: 'Kaura District, Abuja',
              ),
            ],
          )
        ],
      ),
    );
  }
}
