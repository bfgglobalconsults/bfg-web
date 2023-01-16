import 'dart:async';

import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/animate.dart';
import 'package:flutter_animate/effects/fade_effect.dart';
import 'package:flutter_animate/effects/scale_effect.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  List bgImage = ['header1.jpg', 'header2.jpg', 'header3.jpeg'];
  List header = [
    "Grow Your Business",
    "Delivering Promises",
    "The Right Solutions"
  ];
  List paragraph = [
    "Making Your Business Successful isn't easy. That's why Avantage is here to help you with, to make it grow and attract Clients and make it bold.",
    "Avantage Group is all about strategy, we're here to inform which tactics need funding and improvement and which are drains on resources.",
    "Business we operate in is like an intricate game of strategy and chess, where every move counts and you keep score with money.",
  ];

  int _currentPage = 0;
  late Timer _timer;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 3), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(seconds: 4),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: context.getWidth(.5),
                  height: context.height + 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        Assets.images.header5.path,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: context.getWidth(.5),
                  height: context.height + 60,
                  color: AppColors.primaryColor,
                  padding: const EdgeInsets.all(Insets.xl * 2),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 3,
                            width: 100,
                            color: AppColors.white,
                            margin: const EdgeInsets.only(right: Insets.lg),
                          ),
                          Text(
                            'We Want You To Succeed',
                            style: GoogleFonts.baskervville(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      const Gap(Insets.sm),
                      Text(
                        header[0],
                        style: TextStyles.h1.copyWith(
                          color: Colors.white,
                        ),
                      )
                          .animate()
                          .fadeIn() // uses `Animate.defaultDuration`
                          .scale() // inherits duration from fadeIn
                          .move(
                              delay: 300.ms,
                              duration: 600
                                  .ms), // runs after the above w/new duration
                      // .blurXY(),
                      const Gap(Insets.md),
                      SelectableText(
                        paragraph[0],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
