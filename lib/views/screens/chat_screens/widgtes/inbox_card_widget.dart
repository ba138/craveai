import 'package:flutter/material.dart';
import 'package:craveai/views/widgets/my_text.dart';

class InboxCard extends StatelessWidget {
  final String name;
  final String message;
  final String time;
  final String image;

  const InboxCard({
    super.key,
    required this.name,
    required this.message,
    required this.time,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(0.05),
        border: Border.all(color: Colors.white.withOpacity(0.2)),
      ),
      child: Row(
        children: [
          // Profile Image
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(image, height: 48, width: 48, fit: BoxFit.cover),
          ),

          const SizedBox(width: 12),

          // Name + Message
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(text: name, size: 16, weight: FontWeight.w600),
                const SizedBox(height: 4),
                MyText(text: message, size: 13, color: Colors.white70),
              ],
            ),
          ),

          // Time
          MyText(text: time, size: 12, color: Colors.white54),
        ],
      ),
    );
  }
}
