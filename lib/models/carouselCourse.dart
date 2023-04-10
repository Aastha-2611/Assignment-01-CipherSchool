import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselCards extends StatefulWidget {
  List<String> itemList;
  CarouselCards({required this.itemList, super.key});

  @override
  State<CarouselCards> createState() => _CarouselCardsState();
}

class _CarouselCardsState extends State<CarouselCards> {
  final Controller = CarouselController();
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider.builder(
          carouselController: Controller,
          options: CarouselOptions(
              initialPage: 0,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
              viewportFraction: 1,
              //height: 200,
              autoPlay: true,
              reverse: true,
              // enlargeCenterPage: true,
              //   enlargeStrategy: CenterPageEnlargeStrategy.scale,
              autoPlayAnimationDuration: Duration(milliseconds: 300)),
          itemCount: widget.itemList.length,
          itemBuilder: (context, index, realIndex) {
            final url = widget.itemList[index];
            return buildImage(url, index);
          },
        ),
        SizedBox(
          height: 8,
        ),
        buildIndicator(),
      ],
    );
  }

  Widget buildImage(String url, int index) => Container(
        child: FittedBox(fit: BoxFit.fill, child: Image.asset(url)),
        height: 200,
        width: 400,
      );
  Widget buildIndicator() => AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: widget.itemList.length,
        effect: JumpingDotEffect(
            dotWidth: 5,
            dotHeight: 5,
            dotColor: Colors.grey,
            activeDotColor: Color.fromRGBO(243, 145, 46, 1)),
      );
}
