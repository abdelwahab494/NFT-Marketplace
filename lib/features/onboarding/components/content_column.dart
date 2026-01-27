import 'package:project1/imports.dart';

class ContentColumn extends StatelessWidget {
  const ContentColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Text(
              AppStrings.onboardingTitle1,
              style: GoogleFonts.spaceGrotesk(
                color: AppColors.text1,
                fontSize: 36,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  AppStrings.onboardingTitle2,
                  style: GoogleFonts.spaceGrotesk(
                    color: AppColors.text1,
                    fontSize: 36,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Text(
                      AppStrings.onboardingTitleSpan,
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.primary,
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Positioned(
                      bottom: -3,
                      left: -3,
                      child: SvgPicture.asset(AppImages.underline),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ).animate().fadeIn(duration: 500.milliseconds),
        Gap(8),
        Text(
          AppStrings.onboardingSubTitle,
          style: GoogleFonts.spaceGrotesk(
            color: AppColors.text2,
            fontWeight: FontWeight.w300,
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ).animate().fadeIn(duration: 500.milliseconds);
  }
}
