import 'package:project1/imports.dart';

class StatsRow extends StatelessWidget {
  StatsRow({super.key});
  final List info = [
    ["10.0K", "689.10K", "13.99"],
    ["Items", "Volume", "Floor Price"],
  ];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(3, (index) {
          return Column(
            children: [
              Row(
                spacing: 3,
                children: [
                  SvgPicture.asset(AppImages.cristalIcon),
                  Text(
                    info[0][index],
                    style: GoogleFonts.spaceGrotesk(
                      color: AppColors.text1,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Text(
                info[1][index],
                style: GoogleFonts.spaceGrotesk(
                  color: AppColors.text2,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
