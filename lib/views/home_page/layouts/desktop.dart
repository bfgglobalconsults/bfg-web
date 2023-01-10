import 'dart:async';

import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePageDesktop extends StatefulWidget {
  const HomePageDesktop({super.key});

  @override
  State<HomePageDesktop> createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  List bgImage = ['header1.jpeg', 'header2.jpeg', 'header3.jpeg'];
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
        duration: const Duration(milliseconds: 350),
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
            SizedBox(
              width: context.getWidth(),
              height: context.getHeight() + 30,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      width: context.getWidth(.5),
                      height: context.getHeight() + 30,
                      decoration: const BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(120),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: Insets.xl * 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              header[0],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Colors.white,
                              ),
                            ),
                            const Gap(Insets.md),
                            Text(
                              paragraph[0],
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                color: Colors.white,
                              ),
                            ),
                            const Gap(Insets.xl * 1.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: PageView.builder(
                        controller: _pageController,
                        itemCount: 3,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, pageIndex) {
                          return Container(
                            width: context.getWidth(.5),
                            height: context.getHeight() + 30,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  // ignore: prefer_interpolation_to_compose_strings
                                  'assets/images/' + bgImage[pageIndex],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
