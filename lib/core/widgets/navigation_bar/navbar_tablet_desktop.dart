import 'package:bfgglobal/core/widgets/social_links/social_links.dart';
import 'package:gap/gap.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/routing/route_names.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:bfgglobal/core/widgets/navigation_bar/navbar_logo.dart';
import 'package:flutter/material.dart';

import 'nav_btn.dart';
import 'navbar_item.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(color: AppColors.white, boxShadow: [
        // BoxShadow(
        //   spreadRadius: 5,
        //   blurRadius: 14,
        //   color: Colors.grey.shade700,
        // ),
      ]),
      padding: const EdgeInsets.symmetric(horizontal: Insets.xl),
      // margin: const EdgeInsets.symmetric(horizontal: Insets.xl),
      height: 80,
      width: width,
      child: Row(
        children: const [
          NavbarLogo(),
          NavBarItem(
            label: 'Home',
            navigationPath: homeRoute,
            icon: '',
          ),
          NavBarItem(
            label: 'About us',
            navigationPath: shopRoute,
            icon: '',
          ),
          NavBarItem(
            label: 'Expertise',
            navigationPath: aboutRoute,
            icon: '',
          ),
          NavBarItem(
            label: 'Products',
            navigationPath: contactRoute,
            icon: '',
          ),
          NavBarItem(
            label: 'Programs',
            navigationPath: contactRoute,
            icon: '',
          ),
          NavBarItem(
            label: 'News and Analysis',
            navigationPath: contactRoute,
            icon: '',
          ),
          NavBarItem(
            label: 'Contact',
            navigationPath: contactRoute,
            icon: '',
          ),
          Expanded(
            child: SizedBox(),
          ),
          SocialMediaWidget()
        ],
      ),
    );
  }
}

class SocialMediaWidget extends StatelessWidget {
  const SocialMediaWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        // Text(
        //   'Visit our social pages',
        //   style: TextStyle(
        //     color: Colors.black87,
        //     fontSize: 12,
        //     fontWeight: FontWeight.normal,
        //   ),
        // ),
        SocialLinks(),
      ],
    );
  }
}
