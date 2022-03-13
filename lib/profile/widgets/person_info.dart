import 'package:flutter/material.dart';
import 'package:nft_marketplace/models/profile.dart';

class PersonelInfo extends StatelessWidget {
  final Profile profile;
  const PersonelInfo({required this.profile});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.transparent,
            backgroundImage: AssetImage(profile.imageUrl),

          ),
          SizedBox(height: 20,),
          Text(profile.name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
          SizedBox(height: 10,),
          Text(profile.twitter,style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 18),),
          SizedBox(height: 5,),
          Text(profile.desc,style: TextStyle(fontSize: 16,color: Colors.black54,height: 1.5),textAlign: TextAlign.center,),
          SizedBox(height: 5,),
          Text(profile.email,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
        ],
      ),
      
    );
  }
}