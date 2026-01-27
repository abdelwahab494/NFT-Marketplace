import 'package:project1/imports.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: AppColors.bg1,
      onTap: (value) => setState(() => currentIndex = value),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/home.svg",
            colorFilter: ColorFilter.mode(
              currentIndex == 0 ? AppColors.text1 : AppColors.text2,
              BlendMode.srcIn,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/search.svg",
            colorFilter: ColorFilter.mode(
              currentIndex == 1 ? AppColors.text1 : AppColors.text2,
              BlendMode.srcIn,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/saves.svg",
            colorFilter: ColorFilter.mode(
              currentIndex == 2 ? AppColors.text1 : AppColors.text2,
              BlendMode.srcIn,
            ),
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            "assets/icons/profile.svg",
            colorFilter: ColorFilter.mode(
              currentIndex == 3 ? AppColors.text1 : AppColors.text2,
              BlendMode.srcIn,
            ),
          ),
          label: "",
        ),
      ],
    );
  }
}
