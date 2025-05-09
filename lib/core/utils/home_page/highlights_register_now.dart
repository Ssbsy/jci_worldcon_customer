import 'package:jci_worldcon_customer/app/globals.dart' as globals;
import 'package:jci_worldcon_customer/app/widgets/custom_button.dart';
import 'package:jci_worldcon_customer/app/widgets/custom_text.dart';
import 'package:jci_worldcon_customer/core/constants/texts.dart';
import 'package:jci_worldcon_customer/presentations/register_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HighlightsRegisterNow extends StatelessWidget {
  const HighlightsRegisterNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 25),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xFF767992), Color.fromARGB(255, 160, 148, 110)],
        ),
      ),
      child: Column(
        children: [
          CustomText(
            title: "IT’S TIME TO MAKE GREAT THINGS HAPPEN!",
            fontSize: 22,
            fontWeight: FontWeight.bold,
            textColor: Colors.white,
            maxLines: 10,
          ),
          const Gap(10),
          CustomText(
            title: Texts.highLightsRegisterNowDescription,
            fontSize: 14,
            textColor: Colors.white,
            isJustified: true,
            maxLines: 10,
            fontWeight: FontWeight.w300,
          ),
          const Gap(30),
          CustomButton(
            onTap: () => Get.to(const RegisterPage()),
            text: globals.isLoggedIn ? 'Buy Now' : 'Register Now',
            textColor: Colors.white,
            isBold: true,
            borderRadius: 20,
            containerColor: Colors.deepOrange,
            borderColor: Colors.deepOrange,
          ),
          const Gap(20),
          _container(
            context,
            'assets/images/jci_world_congress_2026_bg.png',
            height: MediaQuery.of(context).size.height * 0.3,
            "JCI WORLD CONGRESS 2026",
            "JCI Philippines is proud to host the 2026 JCI World Congress, bringing together young leaders to drive change, foster partnerships, and create lasting impact.",
          ),
          const Gap(20),
          _container(
            context,
            'assets/images/world_class_destination_bg.png',

            height: MediaQuery.of(context).size.height * 0.32,
            "World-Class Destination",
            "Clark, Pampanga is a global hub for MICE events with:",
            subTextList: [
              "1 International Airport",
              "15 Convention Centers",
              "4000+ Hotel Rooms",
              "160+ Dining Options",
            ],
          ),
          const Gap(20),
          _container(
            context,
            'assets/images/an_unforgettable_experience_bg.png',
            height: MediaQuery.of(context).size.height * 0.3,
            "An Unforgettable Experience",
            "From international artists and drone shows to cultural showcases, the 2026 JCI World Congress promises to be the biggest and most exciting yet!",
          ),
        ],
      ),
    );
  }

  Container _container(
    BuildContext context,
    String _image,
    String title,
    String subTitle, {
    double? height,
    List<String>? subTextList,
  }) {
    return Container(
      height: height ?? null,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        image: DecorationImage(image: AssetImage(_image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black.withValues(alpha: 0.6),
          borderRadius: BorderRadius.circular(22),
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomText(
              title: title,
              textColor: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15.5,
            ),
            const Gap(10),
            CustomText(
              title: subTitle,
              fontSize: 12,
              maxLines: 10,
              isJustified: true,
              textColor: Colors.white,
            ),
            if (subTextList != null && subTextList.isNotEmpty) ...[
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 5,
                children:
                    subTextList
                        .map((text) => _rowSubTitleContent(text))
                        .toList(),
              ),
            ],
          ],
        ),
      ),
    );
  }

  Row _rowSubTitleContent(String _text) {
    return Row(
      spacing: 10,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.green,
            borderRadius: BorderRadius.circular(5),
          ),
          child: Icon(Icons.check, color: Colors.white, size: 18),
        ),
        CustomText(title: _text, textColor: Colors.white),
      ],
    );
  }
}
