import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/my_text_field.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                              text: "Welcome Back",
                              size: 22,
                              weight: FontWeight.w600,
                            ),
                            MyText(
                              text: "Your companion is always here",
                              size: 13,
                            ),
                            const SizedBox(height: 20),
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
                            Align(
                              alignment: Alignment.centerRight,
                              child: MyText(
                                text: "Forgot Password?",
                                size: 10,
                                color: AppColors.secondary,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 16.0,
                                right: 16.0,
                              ),
                              child: MyButton(
                                onTap: () {},
                                buttonText: "Login",
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
              Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.white.withValues(alpha: 0.2)),
                  ),
                  const SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: MyText(text: "or sign up with", size: 12),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Divider(color: Colors.white.withValues(alpha: 0.2)),
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(
                          0xFFE8E6EA,
                        ).withValues(alpha: 0.4), // stroke color
                        width: 1.2,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white.withValues(alpha: 0.1),
                          child: CommonImageView(
                            imagePath: Assets.fb,
                            height: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(
                          0xFFE8E6EA,
                        ).withValues(alpha: 0.4), // stroke color
                        width: 1.2,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white.withValues(alpha: 0.1),
                          child: CommonImageView(
                            imagePath: Assets.google,
                            height: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(
                        color: const Color(
                          0xFFE8E6EA,
                        ).withValues(alpha: 0.4), // stroke color
                        width: 1.2,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white.withValues(alpha: 0.1),
                          child: CommonImageView(
                            imagePath: Assets.apple,
                            height: 30,
                          ),
                        ),
                      ),
                    ),
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
