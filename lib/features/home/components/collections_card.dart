import 'package:project1/imports.dart';

class CollectionsCard extends StatelessWidget {
  const CollectionsCard({super.key, required this.item});
  final ItemsModel item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (c) => CardDetailsScreen(item: item))),
      child: Card.outlined(
        elevation: 2,
        color: AppColors.bg1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: -50,
              left: 0,
              right: 0,
              child: Hero(
                tag: "${item.title} - ${item.code}",
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(24),
                  child: Image.asset(item.image),
                ),
              ),
            ),
            Container(
              color: AppColors.bg1,
              margin: EdgeInsets.only(top: 200),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          item.title,
                          style: GoogleFonts.spaceGrotesk(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: AppColors.text1,
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "Ends in",
                              style: GoogleFonts.spaceGrotesk(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: Color(0xff979796),
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(AppImages.clockIcon),
                                Gap(5),
                                Text(
                                  "1h 23m 32s",
                                  style: GoogleFonts.spaceGrotesk(
                                    color: AppColors.text1,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SvgPicture.asset(AppImages.hDivider),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Highest Bid Today",
                              style: GoogleFonts.spaceGrotesk(
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: AppColors.text2,
                              ),
                            ),
                            Gap(4),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(AppImages.cristalIcon),
                                Gap(3.5),
                                Text(
                                  "2.23 ETH",
                                  style: GoogleFonts.spaceGrotesk(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: AppColors.text1,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        FilledButton.icon(
                          onPressed: () {},
                          style: FilledButton.styleFrom(
                            backgroundColor: AppColors.text1,
                            foregroundColor: AppColors.bg1,
                          ),
                          label: Text(
                            "Place Bid",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: AppColors.bg1,
                            ),
                          ),
                          icon: SvgPicture.asset(AppImages.judgeIcon),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
