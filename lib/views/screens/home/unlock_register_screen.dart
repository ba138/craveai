import 'package:craveai/controllers/app_colors.dart';
import 'package:craveai/generated/assets.dart';
import 'package:craveai/views/widgets/common_image_view.dart';
import 'package:craveai/views/widgets/my_text.dart';
import 'package:craveai/views/widgets/my_text_field.dart';
import 'package:flutter/material.dart';

class UnlockRegisterScreen extends StatefulWidget {
  const UnlockRegisterScreen({super.key});

  @override
  State<UnlockRegisterScreen> createState() => _UnlockRegisterScreenState();
}

class _UnlockRegisterScreenState extends State<UnlockRegisterScreen> {
  String selected = "option1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CommonImageView(
                imagePath: Assets.logo,
                height: 50,
                fit: BoxFit.cover,
              ),
              const SizedBox(height: 20),
              MyText(text: "Create Your Account", size: 15),
              const SizedBox(height: 10),
              MyText(
                text: "Register to unlock the full AI experience.",
                size: 10,
              ),
              const SizedBox(height: 20),

              MyTextField(radius: 20, label: "Your Name"),
              MyTextField(radius: 20, label: "Gmail"),

              MyTextField(radius: 20, label: "Country"),

              MyTextField(radius: 20, label: "City"),

              MyTextField(radius: 20, label: "Age", hint: "DD/MM/YY"),
              MyText(
                text: "Must be 18 years or older.",
                color: AppColors.secondary,
              ),
              const SizedBox(height: 20),
              _radioTile(
                title: "I am 18 years or older",
                value: "option1",
                subtitle:
                    "Age verification is required to unlock mature features and ensure a safe experience.",
              ),
              const SizedBox(height: 12),
              _radioTile(
                title: "I agree to the Terms of Service and Privacy Policy",
                value: "option2",
                subtitle: "Your comfort and privacy always come first.",
              ),
            ],
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
