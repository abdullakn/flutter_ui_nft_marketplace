import 'package:flutter/material.dart';
import 'package:nft_marketplace/models/art.dart';

class DeatailBanner extends StatelessWidget {
  final Art art;
  const DeatailBanner({required this.art});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.all(15),
          color: Colors.white,
          height: 400,
          width: double.maxFinite,
          child: Hero(
            tag: art.imageurl,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                art.imageurl,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
            bottom: 30,
            right: 30,
            child: Container(
                padding: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                child: Icon(
                  Icons.favorite_outline,
                  color: Colors.pink,
                )))
      ],
    );
  }
}
