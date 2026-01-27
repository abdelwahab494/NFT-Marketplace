import 'package:project1/imports.dart';

class RootNavigation extends StatelessWidget {
  const RootNavigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: HomeScreen(), bottomNavigationBar: BottomNavBar());
  }
}
