import 'package:project1/imports.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: () {
        Navigator.of(
          context,
        ).pushReplacement(MaterialPageRoute(builder: (c) => RootNavigation()));
      },
      style: IconButton.styleFrom(
        backgroundColor: AppColors.text1,
        foregroundColor: AppColors.bg1,
        fixedSize: Size(56, 56),
      ),
      icon: SvgPicture.asset(AppImages.arrowRight),
    );
  }
}
