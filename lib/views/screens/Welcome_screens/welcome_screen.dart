import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/screens/auth_screens/create_account_screen.dart';
import 'package:craveai/views/screens/auth_screens/login_screen.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CommonImageView(
              imagePath: Assets.welcomeImage,
              height: 300,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            CommonImageView(
              imagePath: Assets.logo,
              height: 80,

              fit: BoxFit.cover,
            ),
            const SizedBox(height: 8),

            MyText(
              text: 'Your AI Girlfriend. Always here.\n Always yours',
              textAlign: TextAlign.center,
              size: 13,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(
                left: 40.0,
                right: 40.0,
                bottom: 20,
                top: 20,
              ),
              child: MyButton(
                onTap: () {
                  Get.to(() => const CreateAccountScreen());
                },
                buttonText: "Create an account",
                radius: 12,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyText(text: "Already have an account?", size: 13),
                MyText(
                  text: " Sign In",
                  color: AppColors.secondary,
                  size: 14,
                  onTap: () {
                    Get.to(() => const LoginScreen());
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
