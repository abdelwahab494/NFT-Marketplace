import 'package:project1/imports.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 35,
      right: 20,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (c) => RootNavigation()),
          );
        },
        child: Text(
          "Skip",
          style: GoogleFonts.spaceGrotesk(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: AppColors.text1,
          ),
        ),
      ),
    );
  }
}
