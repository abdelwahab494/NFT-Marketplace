import 'package:project1/features/best%20artist/components/item_card.dart';
import 'package:project1/imports.dart';

class ItemsSection extends StatelessWidget {
  ItemsSection({super.key});
  final List<ItemsModel> items = [
    ItemsModel(
      image: AppImages.item(1),
      code: "#14415",
      title: "Hypebest Apes B",
    ),
    ItemsModel(
      image: AppImages.item(2),
      code: "#15315",
      title: "Hypebest Apes D",
    ),
    ItemsModel(
      image: AppImages.item(3),
      code: "#16216",
      title: "Hypebest Apes C",
    ),
    ItemsModel(
      image: AppImages.item(4),
      code: "#17114",
      title: "Hypebest Apes A",
    ),
    ItemsModel(
      image: AppImages.item(5),
      code: "#12418",
      title: "Hypebest Apes H",
    ),
    ItemsModel(
      image: AppImages.item(6),
      code: "#94202",
      title: "Hypebest Apes G",
    ),
    ItemsModel(
      image: AppImages.item(7),
      code: "#76207",
      title: "Hypebest Apes Y",
    ),
    ItemsModel(
      image: AppImages.item(8),
      code: "#12612",
      title: "Hypebest Apes T",
    ),
    ItemsModel(
      image: AppImages.item(9),
      code: "#13265",
      title: "Hypebest Apes E",
    ),
    ItemsModel(
      image: AppImages.item(10),
      code: "#15976",
      title: "Hypebest Apes F",
    ),
    ItemsModel(
      image: AppImages.item(11),
      code: "#15634",
      title: "Hypebest Apes I",
    ),
    ItemsModel(
      image: AppImages.item(12),
      code: "#18763",
      title: "Hypebest Apes J",
    ),
    ItemsModel(
      image: AppImages.item(13),
      code: "#48963",
      title: "Hypebest Apes L",
    ),
    ItemsModel(
      image: AppImages.item(14),
      code: "#75864",
      title: "Hypebest Apes Q",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsetsGeometry.only(top: 16, bottom: 30),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 15,
          mainAxisSpacing: 15,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final ItemsModel item = items[index];
          return ItemCard(item: item);
        },
      ),
    );
  }
}
