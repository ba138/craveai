import 'package:craveai/views/screens/discover/discover_screen.dart';
import 'package:craveai/views/screens/home/home_screen.dart';
import 'package:craveai/views/screens/profile/profile_screen.dart';
import 'package:craveai/views/screens/setting/setting_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatefulWidget {
  @override
  State<CustomBottomNav> createState() => _CustomBottomNavState();
}

class _CustomBottomNavState extends State<CustomBottomNav> {
  int selectedIndex = 0;

  final icons = [
    Icons.home_rounded,
    Icons.explore_rounded,
    Icons.person_rounded,
    Icons.settings_rounded,
  ];

  // ✅ Your screens list here
  final List<Widget> _screens = [
    HomeScreen(),
    DiscoverScreen(),
    ProfileScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E1E1E), // dark background
      // ✅ Show current screen
      body: _screens[selectedIndex],

      bottomNavigationBar: SizedBox(
        height: 115,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            // background bar
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: CustomPaint(
                painter: NavBarPainter(),
                child: SizedBox(height: 85),
              ),
            ),

            // Floating icons
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(icons.length, (index) {
                  bool isSelected = index == selectedIndex;

                  return GestureDetector(
                    onTap: () {
                      setState(() => selectedIndex = index);
                    },
                    child: Column(
                      children: [
                        AnimatedContainer(
                          duration: Duration(milliseconds: 200),
                          width: isSelected ? 75 : 0,
                          height: isSelected ? 75 : 0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: isSelected
                                ? Colors.black.withOpacity(0.35)
                                : Colors.transparent,
                          ),
                          child: isSelected
                              ? Icon(icons[index], color: Colors.red, size: 40)
                              : null,
                        ),

                        if (!isSelected)
                          Icon(
                            icons[index],
                            size: 32,
                            color: Colors.grey.shade400,
                          ),
                      ],
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// 🎨 Exact painter that matches your image
class NavBarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Color(0xFF5A5A5A), Color(0xFF6B6A6A), Color(0xFF805151)],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    Path path = Path();
    double curveRadius = 40;
    double circleRadius = 50;

    path.moveTo(0, curveRadius);
    path.quadraticBezierTo(0, 0, curveRadius, 0);

    // Cut-out shape for selected circle
    path.lineTo(size.width * 0.18, 0);
    path.arcToPoint(
      Offset(size.width * 0.18 + circleRadius, 0),
      radius: Radius.circular(circleRadius),
      clockwise: false,
    );

    path.lineTo(size.width - curveRadius, 0);
    path.quadraticBezierTo(size.width, 0, size.width, curveRadius);

    path.lineTo(size.width, size.height - curveRadius);
    path.quadraticBezierTo(
      size.width,
      size.height,
      size.width - curveRadius,
      size.height,
    );

    path.lineTo(curveRadius, size.height);
    path.quadraticBezierTo(0, size.height, 0, size.height - curveRadius);

    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
