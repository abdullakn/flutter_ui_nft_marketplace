import 'dart:math';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/constant/colors.dart';
import 'package:nft_marketplace/models/bidder.dart';

class BidderCard extends StatelessWidget {
  final Bidder bidder;
  const BidderCard({required this.bidder});

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return  Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: randomPinkList[random.nextInt(9) + 1]),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    'Bid Placed by ${bidder.name}',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    bidder.date.toString(),
                    style: TextStyle(color: Colors.grey[400]),
                  )
                ],
              ),
            ],
          ),
          Text(
            '${bidder.price} ETH',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          )
        ],
      
    );
  }
}
