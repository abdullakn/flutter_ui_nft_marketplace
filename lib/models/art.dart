import 'package:nft_marketplace/models/bidder.dart';

class Art{
  String imageurl;
  String name;
  num price;
  String desc;
  List<Bidder> birds;
  List<Bidder> history;

  Art({required this.imageurl,required this.name,required this.price,required this.desc,required this.birds,required this.history});


}