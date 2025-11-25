import 'dart:ui';

import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/screens/home/unlock_register_screen.dart';
import 'package:craveai/views/widgets/my_button.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UnlockScreen extends StatelessWidget {
  const UnlockScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyText(text: "Registration / Unlock", size: 20),
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ), // Rounded corners
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 15,
                    sigmaY: 15,
                  ), // Frosted glass effect
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: AppColors.primary.withValues(
                        alpha: 0.25,
                      ), // Semi-transparent glass
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ), // Rounded corners for glass effect
                          child: Stack(
                            children: [
                              // Background Image
                              Container(
                                height: 300,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(Assets.maya),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),

                              // Frosted glass overlay
                              BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 15,
                                  sigmaY: 15,
                                ), // Blur effect
                                child: Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withValues(
                                      alpha: 0.1,
                                    ), // semi-transparent overlay
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    border: Border.all(
                                      color: Colors.white.withValues(
                                        alpha: 0.2,
                                      ),
                                      width: 1,
                                    ),
                                  ),
                                  child: Center(
                                    child: ClipOval(
                                      child: BackdropFilter(
                                        filter: ImageFilter.blur(
                                          sigmaX: 15,
                                          sigmaY: 15,
                                        ),
                                        child: Container(
                                          height: 80, // Circle size
                                          width: 80,
                                          decoration: BoxDecoration(
                                            color: Colors.white.withValues(
                                              alpha: 0.15,
                                            ), // Glassy overlay
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                              color: Colors.white.withValues(
                                                alpha: 0.25,
                                              ),
                                              width: 1.5,
                                            ),
                                          ),
                                          child: const Center(
                                            child: Icon(
                                              Icons.lock_outline,
                                              size: 32,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        MyText(
                          text: "Unlock this photo &\ncontinue chatting",
                          size: 16,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 12.0,
                            right: 12.0,
                            top: 12,
                          ),
                          child: MyButton(
                            onTap: () {
                              Get.to(() => UnlockRegisterScreen());
                            },
                            buttonText: " REGISTER NOW ",
                            radius: 12,
                          ),
                        ),
                        const SizedBox(height: 12),
                        MyText(
                          text: "Maybe later",
                          size: 16,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
