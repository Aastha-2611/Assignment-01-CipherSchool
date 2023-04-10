import 'package:carousel_slider/carousel_slider.dart';
import 'package:demoscreen/data/cards.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
          viewportFraction: 0.45,
          height: 200,
          autoPlay: true,
          reverse: true,
          enlargeCenterPage: true,
          enlargeStrategy: CenterPageEnlargeStrategy.scale,
          autoPlayAnimationDuration: Duration(milliseconds: 500)),
      itemCount: Cards.cardList.length,
      itemBuilder: (context, index, realIndex) {
        final url = Cards.cardList[index];
        return buildImage(url, index);
      },
    );
  }

  Widget buildImage(String url, int index) => Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        height: 200,
        width: 200,
        child: Image.asset(url),
      );
}
