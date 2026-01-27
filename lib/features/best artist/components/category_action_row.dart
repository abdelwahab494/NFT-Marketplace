import 'package:project1/imports.dart';

class CategoryActionRow extends StatefulWidget {
  const CategoryActionRow({super.key});

  @override
  State<CategoryActionRow> createState() => _CategoryActionRowState();
}

class _CategoryActionRowState extends State<CategoryActionRow> {
  int selectedSection = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 3,
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => selectedSection = 0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: selectedSection == 0
                      ? BorderSide(color: AppColors.primary, width: 2)
                      : BorderSide.none,
                ),
              ),
              padding: EdgeInsets.only(bottom: 8),
              alignment: Alignment.center,
              child: Text(
                "Item's",
                style: GoogleFonts.spaceGrotesk(
                  color: selectedSection == 0
                      ? AppColors.text1
                      : AppColors.text2,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => selectedSection = 1),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  bottom: selectedSection == 1
                      ? BorderSide(color: AppColors.primary, width: 2)
                      : BorderSide.none,
                ),
              ),
              padding: EdgeInsets.only(bottom: 8),
              alignment: Alignment.center,
              child: Text(
                "Activity",
                style: GoogleFonts.spaceGrotesk(
                  color: selectedSection == 1
                      ? AppColors.text1
                      : AppColors.text2,
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
