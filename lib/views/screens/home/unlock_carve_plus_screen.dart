import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/screens/Subscription_Screens/manage_subscription_screen.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnlockCarvePlusScreen extends StatelessWidget {
  const UnlockCarvePlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
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
                const SizedBox(height: 40),
                CommonImageView(
                  imagePath: Assets.logo,
                  height: 50,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 40),
                MyText(
                  text: "Unlock Crave+",
                  size: 22,
                  color: AppColors.secondary,
                ),
                MyText(
                  text: "Unlimited Chat • NSFW Access • VIP Models",
                  size: 12,
                ),
                const SizedBox(height: 30),

                _FeaturesDot(title: "Unlimited chat"),
                const SizedBox(height: 10),

                _FeaturesDot(title: "NSFW Mode & Mature Features"),
                const SizedBox(height: 10),

                _FeaturesDot(title: "Exclusive VIP Models"),
                const SizedBox(height: 10),

                _FeaturesDot(title: "Voice Messages"),
                const SizedBox(height: 10),

                _FeaturesDot(title: "Faster AI Responses"),
                const SizedBox(height: 10),

                _FeaturesDot(title: "Custom Personality Builder"),
                const SizedBox(height: 30),
                _planeContainer(
                  title: "Monthly Plan",
                  price: "\$9.99",
                  duration: "/month",
                  buttonText: "Select Monthly",
                ),
                const SizedBox(height: 10),

                _planeContainer(
                  title: "6-Month Plan",
                  price: "\$39.99",
                  duration: "/ 6 months",
                  buttonText: "Select 6-Monthly",
                  discount: "Save 30%",
                ),
                const SizedBox(height: 10),

                _planeContainer(
                  title: "Annual Plan",
                  price: "\$59.99",
                  duration: "/ year",
                  buttonText: "Select Annual",
                  discount: "Save 50%",
                ),
                const SizedBox(height: 30),
                MyText(
                  text: "Restore Purchase",
                  size: 12,
                  color: AppColors.secondary,
                  textAlign: TextAlign.center,
                  onTap: () {
                    Get.to(() => ManageSubscriptionScreen());
                  },
                ),
                const SizedBox(height: 20),
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
      ),
    );
  }

  Widget _FeaturesDot({required String title}) {
    return Row(
      children: [
        Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.secondary,
          ),
          child: const Center(
            child: Icon(Icons.check, size: 14, color: Colors.white),
          ),
        ),
        const SizedBox(width: 20),
        MyText(text: title, size: 14),
      ],
    );
  }

  Widget _planeContainer({
    required String title,
    required String price,
    required String duration,
    required String buttonText,
    String? discount,
  }) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.2),
          width: 1.2,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  MyText(text: title),
                  Row(
                    children: [
                      MyText(text: price),
                      const SizedBox(width: 4),
                      MyText(text: duration, size: 12, color: Colors.grey),
                    ],
                  ),
                  if (discount != null) ...[
                    const SizedBox(height: 4),
                    MyText(
                      text: discount,
                      size: 10,
                      color: AppColors.secondary.withValues(alpha: 0.7),
                    ),
                  ],
                ],
              ),
            ),

            // Button
            Container(
              height: 40,
              width: 140,
              decoration: BoxDecoration(
                color: Colors.grey.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: MyText(text: buttonText, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
