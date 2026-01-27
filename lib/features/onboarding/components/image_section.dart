// ignore_for_file: deprecated_member_use
import 'package:project1/imports.dart';

class ImageSection extends StatelessWidget {
  const ImageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(AppImages.onboarding1),
          SkipButton(),
          Container(
            height: 120,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.white,
                  Colors.white.withOpacity(0.9),
                  Colors.white.withOpacity(0.8),
                  Colors.white.withOpacity(0.7),
                  Colors.white.withOpacity(0.6),
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.4),
                  Colors.white.withOpacity(0.3),
                  Colors.white.withOpacity(0.2),
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.0),
                ],
              ),
            ),
          ),
        ],
      ).animate().fade(duration: 800.milliseconds),
    );
  }
}
