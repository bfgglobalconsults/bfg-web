import 'package:bfgglobal/config/theme.dart';
import 'package:bfgglobal/core/routing/route_names.dart';
import 'package:bfgglobal/core/services/navigation_service.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:bfgglobal/core/widgets/buttons/primary_btn.dart';
import 'package:bfgglobal/generated/assets.gen.dart';
import 'package:bfgglobal/locator.dart';
import 'package:flutter/material.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: context.getHeight(.6),
              width: context.getWidth(),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(Assets.images.error.path),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(Insets.lg),
              child: Text(
                "Oops! Something went wrong.\n"
                "Looks like you tried to visit a page on our website that either doesn't exist or has been removed.",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Insets.lg),
              child: PrimaryButton(
                action: () {
                  locator<NavigationService>().navigateTo(homeRoute);
                },
                label: 'Go to homepage',
              ),
            )
          ],
        ),
      ),
    );
  }
}
