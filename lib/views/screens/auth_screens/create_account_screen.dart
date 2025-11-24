import 'dart:ui';

import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  String selected = "option1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CommonImageView(
                  imagePath: Assets.logo,
                  height: 80,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 40),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.2),
                      width: 1.2,
                    ),
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Create Account",
                                size: 22,
                                weight: FontWeight.w600,
                              ),
                              MyText(
                                text: "Start your personalized AI experience",
                                size: 13,
                              ),
                              const SizedBox(height: 20),
                              MyTextField(
                                label: "Name",
                                prefix: Icon(Icons.person_outline),
                                hint: "Your name",
                                radius: 12,
                              ),
                              MyTextField(
                                label: "Email",
                                prefix: Icon(Icons.email_outlined),
                                hint: "your@email.com",
                                radius: 12,
                              ),
                              MyTextField(
                                label: "Password",
                                prefix: Icon(Icons.lock_outline),
                                hint: "Enter your password",
                                radius: 12,
                                suffix: Icon(Icons.visibility_off_outlined),
                              ),
                              MyTextField(
                                label: "Confirm Password",
                                prefix: Icon(Icons.lock_outline),
                                hint: "Re-enter your password",
                                radius: 12,
                                suffix: Icon(Icons.visibility_off_outlined),
                              ),
                              MyTextField(
                                label: "Preffered Role",
                                prefix: Icon(Icons.lock_outline),
                                hint: "Choose how you like Maya to support",
                                radius: 12,
                                suffix: Icon(Icons.arrow_drop_down),
                              ),
                              const SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 16.0,
                                  right: 16.0,
                                ),
                                child: MyButton(
                                  onTap: () {},
                                  buttonText: "Create an account",
                                  radius: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.white.withValues(alpha: 0.2),
                      width: 1.2,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                      child: Container(
                        padding: const EdgeInsets.all(16),
                        color: Colors.white.withValues(alpha: 0.1),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _radioTile(
                              title: "I am 18 years or older",
                              value: "option1",
                              subtitle:
                                  "Age verification is required to unlock mature features and ensure a safe experience.",
                            ),
                            const SizedBox(height: 12),
                            _radioTile(
                              title:
                                  "I agree to the Terms of Service and Privacy Policy",
                              value: "option2",
                              subtitle:
                                  "Your comfort and privacy always come first.",
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _radioTile({
    required String title,
    required String value,
    required String subtitle,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Radio<String>(
          value: value,
          groupValue: selected,
          activeColor: Colors.white,
          fillColor: WidgetStateProperty.all(AppColors.secondary),
          onChanged: (val) {
            setState(() => selected = val!);
          },
        ),

        /// 🔥 Fix overflow by wrapping content with Expanded
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.9),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                subtitle,
                softWrap: true,
                overflow: TextOverflow.visible,
                style: TextStyle(
                  color: Colors.white.withValues(alpha: 0.8),
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
