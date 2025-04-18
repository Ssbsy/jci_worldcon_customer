import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.62,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF767992), Color.fromARGB(255, 160, 148, 110)],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('assets/logo/footer_logo_png.png', fit: BoxFit.cover),
              const Gap(30),
              const Divider(thickness: 2, color: Colors.white, endIndent: 200),
              const Gap(30),
              const Divider(thickness: 2, color: Colors.white, endIndent: 120),
              const Gap(30),

              CustomText(
                title: 'Clark, Pampanga',
                textColor: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
              const Gap(25),
              CustomText(
                title: 'Quick Links',
                fontWeight: FontWeight.bold,
                fontSize: 16,
                textColor: Colors.white,
              ),
              const Gap(25),
              Column(
                spacing: 15,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(title: 'Home', textColor: Colors.white),
                  CustomText(title: 'Shop', textColor: Colors.white),
                  CustomText(title: 'COC Team', textColor: Colors.white),
                  CustomText(title: 'FAQ', textColor: Colors.white),
                ],
              ),
              const Gap(15),
              Row(
                spacing: 10,
                children: [
                  Image.asset('assets/logo/facebook_logo_footer.png'),
                  Image.asset('assets/logo/twitter_logo_footer.png'),
                  Image.asset('assets/logo/instagram_logo_footer.png'),
                ],
              ),
              const Gap(15),
              CustomText(
                title: "© 2026 8Box Solutions. All rights reserved",
                textColor: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
