import 'package:google_fonts/google_fonts.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:bfgglobal/core/utils/validators.dart';
import 'package:bfgglobal/core/widgets/footer/footer_desktop.dart';
import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:bfgglobal/generated/assets.gen.dart';

class FooterMobile extends StatefulWidget {
  const FooterMobile({Key? key}) : super(key: key);

  @override
  _FooterMobileState createState() => _FooterMobileState();
}

class _FooterMobileState extends State<FooterMobile> {
  final _controller = TextEditingController();
  bool showFirst = false;
  bool showSecond = false;
  bool showThird = false;
  bool showFourth = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: const Color.fromARGB(255, 50, 50, 50),
        width: context.width,
        padding: EdgeInsets.all(context.getWidth(.075)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///NEWSLETTER///
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showFirst = !showFirst;
                    });
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Newsletter :::',
                        style: GoogleFonts.merriweatherSans(
                          color: AppColors.primaryLight,
                          fontSize: 18,
                        ),
                      ),
                      Icon(
                        !showFirst
                            ? Icons.arrow_circle_down_outlined
                            : Icons.arrow_circle_up_outlined,
                        color: Colors.white70,
                      )
                    ],
                  ),
                ),
                const Gap(Insets.lg),
                !showFirst
                    ? const SizedBox.shrink()
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Get the Latest oraimo News and Giveaways',
                            style: GoogleFonts.merriweatherSans(
                              color: Colors.white70,
                            ),
                          ),
                          const Gap(Insets.md),
                          TextFormField(
                            controller: _controller,
                            keyboardType: TextInputType.emailAddress,
                            validator: (input) =>
                                Validators.validateEmail(input),
                            style: GoogleFonts.merriweatherSans(
                              color: AppColors.white,
                              fontSize: 11,
                            ),
                            decoration: InputDecoration(
                              prefixIcon: LocalSvgIcon(
                                Assets.icons.linear.sms,
                                color: Colors.white70,
                              ),
                              suffix: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  backgroundColor: Colors.black54,
                                ),
                                onPressed: () {},
                                child: const Text('Subscribe'),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                  borderSide: const BorderSide(
                                      width: .6, color: Colors.white70)),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(22),
                                  borderSide: const BorderSide(
                                      width: .6, color: Colors.white70)),
                              hintText: "Enter your email address",
                              hintStyle: const TextStyle(
                                color: Colors.white70,
                              ),
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.white70,
                                  width: .7,
                                ),
                              ),
                            ),
                          ),
                          const Gap(Insets.md),
                          Text(
                            "SERVICE HOURS: Monday-Friday 9AM to 8PM",
                            style: GoogleFonts.merriweatherSans(
                              color: Colors.white70,
                              fontSize: 11,
                            ),
                          ),
                          const Gap(Insets.md),
                          Text(
                            "CUSTOMER SERVICE: +234 818 135 3103 (First Choice)   +234 809 604 0753",
                            style: GoogleFonts.merriweatherSans(
                              color: Colors.white70,
                              fontSize: 11,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Socials: ",
                                style: GoogleFonts.merriweatherSans(
                                  color: Colors.white70,
                                  fontSize: 11,
                                ),
                              ),
                              // const SocialLinks(),
                              const Gap(Insets.md),
                            ],
                          ),
                        ],
                      )
              ],
            ),

            // KUNKE NATURALS///
            GestureDetector(
              onTap: () {
                setState(() {
                  showSecond = !showSecond;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Kunke Naturals :::',
                    style: GoogleFonts.merriweatherSans(
                      color: AppColors.primaryLight,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    !showSecond
                        ? Icons.arrow_circle_down_outlined
                        : Icons.arrow_circle_up_outlined,
                    color: Colors.white70,
                  )
                ],
              ),
            ),
            const Gap(Insets.lg),
            !showSecond
                ? const SizedBox.shrink()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      FooterItem(text: 'About Us'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Where to buy'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Special Offer'),
                      Gap(Insets.md),
                    ],
                  ),

            /// TERMS ///
            GestureDetector(
              onTap: () {
                setState(() {
                  showThird = !showThird;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Terms :::',
                    style: GoogleFonts.merriweatherSans(
                      color: AppColors.primaryLight,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    !showThird
                        ? Icons.arrow_circle_down_outlined
                        : Icons.arrow_circle_up_outlined,
                    color: Colors.white70,
                  )
                ],
              ),
            ),
            const Gap(Insets.lg),
            !showThird
                ? const SizedBox.shrink()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      FooterItem(text: 'Warranty'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Order & Shipping'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Replacement & Refund'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Terms & Conditions'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Privacy Policy'),
                      Gap(Insets.md),
                    ],
                  ),

            /// GET HELP ///
            GestureDetector(
              onTap: () {
                setState(() {
                  showFourth = !showFourth;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Get Help :::',
                    style: GoogleFonts.merriweatherSans(
                      color: AppColors.primaryLight,
                      fontSize: 18,
                    ),
                  ),
                  Icon(
                    !showFourth
                        ? Icons.arrow_circle_down_outlined
                        : Icons.arrow_circle_up_outlined,
                    color: Colors.white70,
                  )
                ],
              ),
            ),
            const Gap(Insets.md),
            !showFourth
                ? const SizedBox.shrink()
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      FooterItem(text: 'Track Your Order'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Contact Us'),
                      Gap(Insets.lg),
                      FooterItem(text: 'Frequently Asked Questions'),
                      Gap(Insets.md),
                    ],
                  ),

            const Gap(Insets.xl),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "© 2022 Kunke Naturals. All rights reserved",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ));
  }
}
