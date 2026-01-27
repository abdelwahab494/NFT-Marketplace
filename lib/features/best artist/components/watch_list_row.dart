import 'package:project1/imports.dart';

class WatchListRow extends StatelessWidget {
  const WatchListRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: TextButton.icon(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: AppColors.primary,
                foregroundColor: AppColors.bg1,
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
              ),
              icon: Icon(Icons.add),
              label: Text(
                "WatchList",
                style: GoogleFonts.spaceGrotesk(
                  color: AppColors.bg1,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
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
          ),
        ],
      ),
    );
  }
}
