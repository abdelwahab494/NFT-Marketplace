import 'package:project1/imports.dart';

class BestArtist extends StatelessWidget {
  const BestArtist({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Best Artist",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: AppColors.text1,
                ),
              ),
              Row(
                spacing: 1.5,
                children: List.generate(
                  3,
                  (index) => Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.text2, width: 1.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap(16),
          Row(
            children: [
              Hero(
                tag: "Darlene Robertson",
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (c) => BestArtistScreen()),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(AppImages.bestArtistImage),
                      radius: 25,
                    ),
                  ),
                ),
              ),
              Gap(12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 4,
                children: [
                  Text(
                    "Darlene Robertson",
                    style: GoogleFonts.spaceGrotesk(
                      color: AppColors.text1,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    "125k Followers",
                    style: GoogleFonts.spaceGrotesk(
                      color: AppColors.text2,
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              Spacer(),
              TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  foregroundColor: AppColors.bg1,
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                ),
                child: Text(
                  "Follow",
                  style: GoogleFonts.spaceGrotesk(
                    color: AppColors.bg1,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
