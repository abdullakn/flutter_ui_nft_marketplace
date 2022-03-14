import 'package:flutter/material.dart';
import 'package:nft_marketplace/models/art.dart';
import 'package:nft_marketplace/models/profile.dart';

class ArtInfo extends StatelessWidget {
  final Art art;
  final Profile profile = Profile.genrateProfile();
  ArtInfo({required this.art});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            art.name,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildIconText(
                  profile.imageUrl, 0, 'Creator', profile.twitter.substring(1)),
                  _buildIconText("assets/images/eth.png", 8, "Current Bid", '${art.price} ETH')
            ],
          ),
          SizedBox(height: 25,),
          Text(art.desc,style: TextStyle(wordSpacing: 3,height: 1.3,color: Colors.black),)

        ],
      ),
    );
  }

  Widget _buildIconText(
      String imgUrl, double padding, String title, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 40,
          width: 40,
          padding: EdgeInsets.all(padding),
          decoration: BoxDecoration( color: Colors.grey[200],shape: BoxShape.circle),
          child:Image.asset(imgUrl,fit: BoxFit.cover,)
        ),
        SizedBox(width: 20),
        Column(
          children: [
            Text(
              title,
              style: TextStyle(color: Colors.black45),
            ),
            Text(
              text,
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16, height: 1.5),
            )
          ],
        ),
        
      ],
    );
  }
}
