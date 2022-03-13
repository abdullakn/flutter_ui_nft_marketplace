class Profile {
  String imageUrl;
  String name;
  String twitter;
  String desc;
  String email;

  Profile(
      {required this.imageUrl,
      required this.name,
      required this.twitter,
      required this.desc,
      required this.email});

  static Profile genrateProfile() {
    return Profile(
        imageUrl: "assets/images/avatar.png",
        name: "Abdulla KN",
        twitter: "@abdullakn",
        desc: "3D work of nft, his work is very famous in India and over the world",
        email: "abdu@gmail.com");
  }
}
