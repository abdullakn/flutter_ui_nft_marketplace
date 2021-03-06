import 'dart:html';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/details/details.dart';
import 'package:nft_marketplace/models/art.dart';

class CustomGrid extends StatelessWidget {
  final scrollKey;
  final List<Art> list;
  const CustomGrid({required this.scrollKey, required this.list});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: GridView.builder(
          key: PageStorageKey(scrollKey),
          itemCount: list.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4 / 5),
          itemBuilder: (context, index) =>  Container(
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (ctx) => DetailsPage(art: list[index])));
                      },
                      child: Hero(
                        tag: list[index].imageurl,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            list[index].imageurl,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )),
                ),
              ),
    );
  }
}
