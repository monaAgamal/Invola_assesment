import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_share/flutter_share.dart';

class ImageSlider extends StatelessWidget {
  final List<String> imageUrls;
  final bool isFavourite;

  const ImageSlider({
    Key? key,
    required this.isFavourite,
    this.imageUrls = const [
      "https://eturbonews.com/wp-content/uploads/2020/03/africa-cruise-safari.jpg",
      "https://eturbonews.com/wp-content/uploads/2020/03/africa-cruise-safari.jpg",
      "https://eturbonews.com/wp-content/uploads/2020/03/africa-cruise-safari.jpg",
    ],
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: imageUrls.length,
          itemBuilder: (_, index) => Stack(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                  left: 0,
                  bottom: 12,
                  child: SizedBox(
                    width: 80,
                    height: 40,
                    child: ListView.builder(
                      itemCount: imageUrls.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (_, bulletIndex) => Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: VisibleImageBullet(
                          key: UniqueKey(),
                          isSelected: bulletIndex == index,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
                size: 28,
              ),
              const Expanded(child: SizedBox()),
              GestureDetector(
                onTap: () async {
                  await FlutterShare.share(
                      title: 'Example share',
                      text: 'Example share text',
                      linkUrl: 'https://flutter.dev/',
                      chooserTitle: 'Example Chooser Title');
                },
                child: const Icon(
                  Icons.share,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              Icon(
                isFavourite ? Icons.star_outlined : Icons.star_outline_rounded,
                color: Colors.white,
                size: 32,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class VisibleImageBullet extends StatelessWidget {
  final bool isSelected;

  const VisibleImageBullet({
    Key? key,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: isSelected ? 16 : 20,
      height: isSelected ? 16 : 20,
      duration: const Duration(microseconds: 10),
      curve: Curves.bounceInOut,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isSelected ? Colors.white : Colors.white.withOpacity(0.5),
      ),
    );
  }
}
