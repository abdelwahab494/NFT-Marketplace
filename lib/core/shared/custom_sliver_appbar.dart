import 'package:project1/imports.dart';

class CustomSliverAppbar extends StatelessWidget {
  const CustomSliverAppbar({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      toolbarHeight: 80,
      elevation: 0,
      scrolledUnderElevation: 0,
      pinned: true,
      backgroundColor: AppColors.bg1,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),
      ),
      title: Text(
        title,
        style: GoogleFonts.spaceGrotesk(
          color: AppColors.text1,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      centerTitle: true,
    );
  }
}
