import 'package:nft_marketplace/models/art.dart';
import 'package:nft_marketplace/models/bidder.dart';

class Profile {
  String imageUrl;
  String name;
  String twitter;
  String desc;
  String email;
  List<Art> creation;
  List<Art> collection;

  Profile(
      {required this.imageUrl,
      required this.name,
      required this.twitter,
      required this.desc,
      required this.email,
      required this.creation,
      required this.collection});

  static Profile genrateProfile() {
    return Profile(
        imageUrl: "assets/images/avatar.png",
        name: "Abdulla KN",
        twitter: "@abdullakn",
        desc:
            "3D work of nft, his work is very famous in India and over the world",
        email: "abdu@gmail.com",
        creation: [
          Art(
              imageurl: "assets/images/nft1.jpeg",
              name: "NFT1",
              price: 35,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft2.jpeg",
              name: "NFT2",
              price: 40,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft3.jpeg",
              name: "NFT1",
              price: 35,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft4.jpeg",
              name: "NFT2",
              price: 40,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft5.jpeg",
              name: "NFT1",
              price: 35,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft6.jpeg",
              name: "NFT2",
              price: 40,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory())
        ],
        collection: [
          Art(
              imageurl: "assets/images/nft1.jpeg",
              name: "NFT1",
              price: 35,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft2.jpeg",
              name: "NFT2",
              price: 40,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft3.jpeg",
              name: "NFT1",
              price: 35,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft4.jpeg",
              name: "NFT2",
              price: 40,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft5.jpeg",
              name: "NFT1",
              price: 35,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory()),
          Art(
              imageurl: "assets/images/nft6.jpeg",
              name: "NFT2",
              price: 40,
              desc: "beautiful handmade nft",
              birds: Bidder.generateBidder(),
              history: Bidder.generateHistory())
        ]);
  }
}
