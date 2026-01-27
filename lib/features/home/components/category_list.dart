import 'package:project1/imports.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedCategory = 0;
  bool isSelected(int index) => selectedCategory == index;

  final List<String> categories = ["Trending", "By Artist", "ETH", "BTC"];

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          spacing: 8,
          children: List.generate(categories.length, (index) {
            return GestureDetector(
              onTap: () => setState(() => selectedCategory = index),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 9),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(500),
                  color: isSelected(index)
                      ? AppColors.primary
                      : Color(0xffF8F8F8),
                ),
                child: Text(
                  categories[index],
                  style: GoogleFonts.spaceGrotesk(
                    color: isSelected(index)
                        ? AppColors.bg1
                        : Color(0xff979796),
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
