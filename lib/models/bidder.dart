class Bidder{
  String name;
  DateTime date;
  num price;

  Bidder({required this.name,required this.date,required this.price});

  static List<Bidder> generateBidder(){
    return [
      Bidder(name: 'Sameeh', date: DateTime.now(), price: 1.5),
      Bidder(name: 'Anwar', date: DateTime.now(), price: 1.8),
      Bidder(name: 'Athif', date: DateTime.now(), price: 1.4),
      Bidder(name: 'shareef', date: DateTime.now(), price: 1.3),
    ];
  }


  
  static List<Bidder> generateHistory(){
    return [
      Bidder(name: 'Sameeh', date: DateTime.now(), price: 1.5),
      Bidder(name: 'Anwar', date: DateTime.now(), price: 1.8),
      Bidder(name: 'Athif', date: DateTime.now(), price: 1.4),
      Bidder(name: 'shareef', date: DateTime.now(), price: 1.3),
    ];
  }
}