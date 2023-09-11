class FeaturedItems {
  final String Image;
  final String price;
  final String carName;
  final String adminPic;
  final String adminName;
  final String months;
  final String location;
  FeaturedItems(
      {required this.Image,
      required this.price,
      required this.carName,
      required this.adminName,
      required this.adminPic,
      required this.months,
      required this.location});
}

List<FeaturedItems> items = [
  FeaturedItems(
      Image: "assets/images/car1.jpg",
      price: "500,000.00",
      carName: "Toyota Raize",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      location: "Little Italy,Quebec City"),
  FeaturedItems(
      Image: "assets/images/car2.jpg",
      price: "600,000.00",
      carName: "Kia Sportage 2020 white",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      location: "Riverdale, Toronto"),
  FeaturedItems(
      Image: "assets/images/car3.jpg",
      price: "899,999.99",
      carName: "Ford Fusion",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      location: "Singapore, Singapore"),
  FeaturedItems(
      Image: "assets/images/car4.jpg",
      price: "300,000.00",
      carName: "BMW F30",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      location: "San Chaung, Yangon"),
  FeaturedItems(
      Image: "assets/images/car5.jpg",
      price: "5,200.00",
      carName: "1960 Vespa 400",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      location: "Griffintown, Quebec City"),
];
