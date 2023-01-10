import 'package:bfgglobal/config/constants.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/utils/extensions/hover_extensions.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialLinks extends StatelessWidget {
  final MainAxisAlignment? alignment;

  const SocialLinks({
    Key? key,
    this.alignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: alignment ?? MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              launchUrlString(linkedlnUrl);
            },
            icon: const FaIcon(
              FontAwesomeIcons.linkedin,
              // color: Color(0xFF0072B1),
              color: AppColors.primaryColor,
              size: 16,
            ),
          ).moveUpOnHover,
          IconButton(
            onPressed: () => launchUrlString(instagramUrl),
            icon: const FaIcon(
              FontAwesomeIcons.instagram,
              // color: Color(0xFF8A3AB9),
              color: AppColors.primaryColor,
              size: 16,
            ),
          ).moveUpOnHover,
          IconButton(
            onPressed: () => launchUrlString(facebookUrl),
            icon: const FaIcon(
              FontAwesomeIcons.facebookF,
              // color: Color(0xFF3B5998),
              color: AppColors.primaryColor,
              size: 16,
            ),
          ).moveUpOnHover,
          IconButton(
            onPressed: () => launchUrlString(twitterUrl),
            icon: const FaIcon(
              FontAwesomeIcons.twitter,
              // color: Color(0xFF00ACEE),
              color: AppColors.primaryColor,
              size: 16,
            ),
          ).moveUpOnHover,
          // IconButton(
          //   onPressed: () => launchUrlString(youtubeUrl),
          //   icon: const FaIcon(
          //     FontAwesomeIcons.youtube,
          //     // color: Color(0xFFC4302B),
          //     color: Colors.white,
          //     size: 16,
          //   ),
          // ).moveUpOnHover,
        ],
      );
}
