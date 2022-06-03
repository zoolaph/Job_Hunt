import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import './item_job.dart';

class JobCarousel extends StatelessWidget {
  const JobCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        enableInfiniteScroll: false,
        reverse: false,
        viewportFraction: 0.86,
        height: 230.0,
      ),
      items: const <Widget>[
        ItemJob(),
        ItemJob(),
        ItemJob(),
      ],
    );
  }
}
