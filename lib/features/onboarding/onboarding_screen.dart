import 'package:project1/imports.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          ImageSection(),
          SliverGap(40),
          SliverToBoxAdapter(child: ContentColumn()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsetsGeometry.fromLTRB(45, 0, 32, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [PagesDots(), NextButton()],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
