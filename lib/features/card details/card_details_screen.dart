import 'package:project1/imports.dart';

class CardDetailsScreen extends StatelessWidget {
  const CardDetailsScreen({
    super.key,
    required this.item,
    required this.endTime,
  });
  final ItemsModel item;
  final DateTime endTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppbar(title: "Details"),
            SliverToBoxAdapter(
              child: Hero(
                tag: "${item.title} - ${item.code}",
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(24),
                  child: Image.asset(item.image),
                ),
              ),
            ),
            SliverGap(24),
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    item.code,
                    style: GoogleFonts.spaceGrotesk(
                      color: AppColors.primary,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item.title,
                        style: GoogleFonts.spaceGrotesk(
                          color: AppColors.text1,
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.bg2,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(AppImages.premiumIcon),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.bg2,
                          borderRadius: BorderRadius.circular(500),
                        ),
                        child: Text(
                          "125 Sold",
                          style: GoogleFonts.spaceGrotesk(
                            color: AppColors.text2,
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      Gap(8),
                      SvgPicture.asset(
                        AppImages.clockIcon,
                        color: AppColors.text2,
                      ),
                      Gap(4),
                      CountdownTimer(
                        endTime: endTime,
                        textStyle: GoogleFonts.spaceGrotesk(
                          color: AppColors.text2,
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  Gap(12),
                  SvgPicture.asset(AppImages.divider),
                  Gap(12),
                  Text(
                    "Description",
                    style: GoogleFonts.spaceGrotesk(
                      color: AppColors.text1,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                  Gap(8),
                  Text(
                    "Each Apes NFT is a unique masterpiece, and crafted by artists around the globe.",
                    style: GoogleFonts.spaceGrotesk(
                      color: AppColors.text2,
                      fontWeight: FontWeight.w300,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        height: 120,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Price",
                  style: GoogleFonts.spaceGrotesk(
                    color: AppColors.text2,
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                  ),
                ),
                Text(
                  "2.23 ETH",
                  style: GoogleFonts.spaceGrotesk(
                    color: AppColors.text1,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            FilledButton.icon(
              onPressed: () {},
              style: FilledButton.styleFrom(
                backgroundColor: AppColors.text1,
                foregroundColor: AppColors.bg1,
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 38),
              ),
              label: Text(
                "Place Bid",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: AppColors.bg1,
                ),
              ),
              icon: SvgPicture.asset(AppImages.arrowRight),
            ),
          ],
        ),
      ),
    );
  }
}
