import 'package:project1/imports.dart';

class CoverProfileImage extends StatelessWidget {
  const CoverProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(AppImages.profileBanner),
          Positioned(
            bottom: -25,
            child: Hero(
              tag: "Darlene Robertson",
              child: Container(
                width: 95,
                height: 95,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: AppColors.bg1, width: 2.5),
                  image: DecorationImage(
                    image: AssetImage(AppImages.bestArtistImage),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
