import 'package:flutter/material.dart';
import 'package:nft_marketplace/details/widgets/bidder_card.dart';
import 'package:nft_marketplace/models/bidder.dart';

class BidderList extends StatelessWidget {
  final String scrollKey;
  final List<Bidder> bidderList;
  const BidderList({required this.scrollKey,required this.bidderList});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(
        key: PageStorageKey(scrollKey),
        padding: EdgeInsets.all(20),
        itemBuilder: (_,index)=>BidderCard(bidder: bidderList[index]),
       separatorBuilder: (_,index)=>SizedBox(height: 15,),
        itemCount: bidderList.length),
      
    );
  }
}