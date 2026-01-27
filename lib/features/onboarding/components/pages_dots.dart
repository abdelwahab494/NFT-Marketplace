import 'package:project1/imports.dart';

class PagesDots extends StatefulWidget {
  const PagesDots({super.key});

  @override
  State<PagesDots> createState() => _PagesDotsState();
}

class _PagesDotsState extends State<PagesDots> {
  int selectedScreenIndex = 2;
  bool isSelected(int index) => selectedScreenIndex == index;
  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 4,
      children: List.generate(4, (index) {
        return Container(
          width: isSelected(index) ? 8 : 4,
          decoration: BoxDecoration(
            color: isSelected(index) ? AppColors.text1 : AppColors.text2,
            shape: BoxShape.circle,
          ),
        );
      }),
    );
  }
}
