import 'package:project1/imports.dart';

class ProfileNameDesc extends StatelessWidget {
  const ProfileNameDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Text(
                "Darlene Robertson",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: AppColors.text1,
                ),
              ),
              SvgPicture.asset(AppImages.verifyIcon),
            ],
          ),
          Gap(5),
          Text(
            "Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.",
            textAlign: TextAlign.center,
            style: GoogleFonts.spaceGrotesk(
              color: AppColors.text2,
              fontWeight: FontWeight.w300,
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}
