import 'package:project1/imports.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(32, 30, 32, 0),
        child: CustomScrollView(
          slivers: <Widget>[
            HomeAppBar(),
            SliverGap(32),
            CategoryList(),
            SliverGap(24),
            TopCollectionsSection(),
            SliverGap(24),
            BestArtist(),
          ],
        ),
      ),
    );
  }
}
