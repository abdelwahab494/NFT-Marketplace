import 'package:carousel_slider/carousel_slider.dart';
import 'package:project1/imports.dart';

class TopCollectionsSection extends StatefulWidget {
  const TopCollectionsSection({super.key});

  @override
  State<TopCollectionsSection> createState() => _TopCollectionsSectionState();
}

class _TopCollectionsSectionState extends State<TopCollectionsSection> {
  final List<ItemsModel> collectionsList = [
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
  ];
  late final List<DateTime> endTimes;

  @override
  void initState() {
    super.initState();
    endTimes = List.generate(
      collectionsList.length,
      (_) => DateTime.now().add(
        const Duration(hours: 1, minutes: 23, seconds: 42),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Collection 🔥",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: AppColors.text1,
                ),
              ),
              Row(
                spacing: 1.5,
                children: List.generate(
                  3,
                  (index) => Container(
                    width: 6,
                    height: 6,
                    decoration: BoxDecoration(
                      border: Border.all(color: AppColors.text2, width: 1.5),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Gap(16),
          CarouselSlider.builder(
            itemCount: collectionsList.length,
            itemBuilder:
                (BuildContext context, int itemIndex, int pageViewIndex) =>
                    CollectionsCard(
                      item: collectionsList[itemIndex],
                      endTime: endTimes[itemIndex],
                    ),
            options: CarouselOptions(
              aspectRatio: 0.83,
              viewportFraction: 1,
              initialPage: 2,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 900),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              enlargeFactor: 0.3,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ],
      ),
    );
  }
}
