import 'package:project1/imports.dart';

class BestArtistScreen extends StatelessWidget {
  const BestArtistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: CustomScrollView(
          slivers: <Widget>[
            CustomSliverAppbar(title: "Collection"),
            CoverProfileImage(),
            SliverGap(32),
            ProfileNameDesc(),
            SliverGap(16),
            StatsRow(),
            SliverGap(16),
            WatchListRow(),
            SliverAppBar(
              pinned: true,
              automaticallyImplyLeading: false,
              scrolledUnderElevation: 0,
              elevation: 0,
              backgroundColor: AppColors.bg1,
              toolbarHeight: 40,
              title: CategoryActionRow(),
            ),
            ItemsSection(),
          ],
        ),
      ),
    );
  }
}
