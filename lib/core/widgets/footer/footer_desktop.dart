import 'package:bfgglobal/core/widgets/images/local_svg_icon.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bfgglobal/config/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:bfgglobal/core/utils/extensions/context.dart';
import 'package:bfgglobal/core/utils/validators.dart';
import 'package:bfgglobal/generated/assets.gen.dart';

class FooterDesktop extends StatefulWidget {
  const FooterDesktop({super.key});

  @override
  State<FooterDesktop> createState() => _FooterDesktopState();
}

class _FooterDesktopState extends State<FooterDesktop> {
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            color: const Color.fromARGB(255, 50, 50, 50),
            width: context.width,
            padding: EdgeInsets.all(context.getWidth(.075)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Newsletter:::',
                            style: GoogleFonts.merriweatherSans(
                              color: AppColors.primaryLight,
                            ),
                          ),
                          const Gap(Insets.md),
                          Text(
                            'Get the Latest oraimo News and Giveaways',
                            style: GoogleFonts.merriweatherSans(
                              color: Colors.white70,
                            ),
                          ),
                          const Gap(Insets.md),
                          ConstrainedBox(
                            constraints:
                                BoxConstraints(maxWidth: context.getWidth(.4)),
                            child: TextFormField(
                              controller: _controller,
                              keyboardType: TextInputType.emailAddress,
                              validator: (input) =>
                                  Validators.validateEmail(input),
                              style: GoogleFonts.merriweatherSans(
                                color: AppColors.white,
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
                          ),
                          const Gap(Insets.md),
                          Text(
                            "SERVICE HOURS: Monday-Friday 9AM to 8PM",
                            style: GoogleFonts.merriweatherSans(
                              color: Colors.white,
                            ),
                          ),
                          const Gap(Insets.md),
                          Text(
                            "CUSTOMER SERVICE: +234 818 135 3103 (First Choice)   +234 809 604 0753",
                            style: GoogleFonts.merriweatherSans(
                              color: Colors.white,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                "Socials: ",
                                style: GoogleFonts.merriweatherSans(
                                  color: Colors.white,
                                ),
                              ),
                              // const SocialLinks(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Kunke Naturals:::",
                                style: GoogleFonts.merriweatherSans(
                                  color: AppColors.primaryLight,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'About Us'),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Where to buy'),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Special Offer'),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Terms:::",
                                style: GoogleFonts.merriweatherSans(
                                  color: AppColors.primaryLight,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Warranty'),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Order & Shipping'),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Replacement & Refund'),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Terms & Conditions'),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Privacy Policy'),
                            ],
                          )),
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Get Help:::",
                                style: GoogleFonts.merriweatherSans(
                                  color: AppColors.primaryLight,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                ),
                              ),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Track Your Order'),
                              const Gap(Insets.lg),
                              const FooterItem(text: 'Contact Us'),
                              const Gap(Insets.lg),
                              const FooterItem(
                                  text: 'Frequently Asked Questions'),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
                const Gap(Insets.xl * 2),
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
            )),
      ],
    );
  }
}

class FooterItem extends StatelessWidget {
  final String text;

  const FooterItem({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.merriweatherSans(
        fontWeight: FontWeight.normal,
        fontSize: 12,
        color: Colors.white70,
      ),
    );
  }
}
