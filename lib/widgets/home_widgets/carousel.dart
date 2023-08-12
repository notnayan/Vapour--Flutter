import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:flutter/material.dart';

class MyCarousel extends StatefulWidget {
  const MyCarousel({super.key});

  @override
  State<MyCarousel> createState() => _MyCarouselState();
}

class _MyCarouselState extends State<MyCarousel> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 250,
              width: double.infinity,
              child: AnotherCarousel(
                images: [
                  NetworkImage(
                      "https://cdn.cloudflare.steamstatic.com/steam/apps/814380/capsule_616x353.jpg?t=1678991267"),
                  NetworkImage(
                      "https://cdn1.epicgames.com/b30b6d1b4dfd4dcc93b5490be5e094e5/offer/RDR2476298253_Epic_Games_Wishlist_RDR2_2560x1440_V01-2560x1440-2a9ebe1f7ee202102555be202d5632ec.jpg"),
                  NetworkImage(
                      "https://cdn.cloudflare.steamstatic.com/steam/apps/359550/capsule_616x353.jpg?t=1690498575"),
                  NetworkImage(
                      "https://cdn.akamai.steamstatic.com/steam/apps/381210/capsule_616x353.jpg?t=1690568846"),
                  NetworkImage(
                      "https://cdn.cloudflare.steamstatic.com/steam/apps/1245620/capsule_616x353.jpg?t=1683618443")
                ],
                dotSize: 7,
                indicatorBgPadding: 7,
                animationCurve: Curves.easeIn,
                // dotBgColor: Colors.black,
                dotColor: Colors.deepPurple,
              ),
            );
  }
}