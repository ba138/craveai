import 'dart:ui';

import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ManageSubscriptionScreen extends StatelessWidget {
  const ManageSubscriptionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back, color: AppColors.onPrimary),
                  ),
                  const SizedBox(width: 16),
                  MyText(text: "Back", size: 16),
                ],
              ),
              const SizedBox(height: 20),
              MyText(text: "Manage Your Subscription", size: 20),
              const SizedBox(height: 20),

              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white.withValues(alpha: 0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: "Current Plan",
                              size: 18,
                              weight: FontWeight.w400,
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(text: "Plan:", size: 12),
                                MyText(text: "Crave+ Monthly", size: 12),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(text: "Status:", size: 12),
                                MyText(
                                  text: "Active",
                                  size: 12,
                                  color: Colors.green,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                MyText(text: "Next Billing:", size: 12),
                                MyText(text: "October 15, 2023", size: 12),
                              ],
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      alignment: Alignment.center,
                      color: Colors.white.withValues(alpha: 0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              text: "Options",
                              size: 18,
                              weight: FontWeight.w400,
                            ),
                            const SizedBox(height: 20),
                            MyBorderButton(
                              buttonText: "Cancel Subscription",
                              onTap: () {},
                              radius: 12,
                              bgColor: Colors.transparent,
                              textColor: AppColors.secondary,
                            ),
                            const SizedBox(height: 20),
                            MyText(
                              text:
                                  "Your premium access will remain until the end of the billing period.",
                              size: 10,
                            ),
                            const SizedBox(height: 20),
                            MyBorderButton(
                              buttonText: "Restore Subscription",
                              onTap: () {},
                              radius: 12,
                              bgColor: Colors.transparent,
                            ),
                            const SizedBox(height: 20),
                            MyText(
                              text: "Use if you already paid but lost access",
                              size: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyText(
                    text: "Terms of Service",
                    size: 10,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10),
                  MyText(
                    text: "• Privacy Policy",
                    size: 10,
                    color: Colors.grey,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
