class menufactureItems {
  final String Image;
  final String price;
  final String carName;
  final String adminPic;
  final String adminName;
  final String months;
  final String car;
  menufactureItems(
      {required this.Image,
      required this.price,
      required this.carName,
      required this.adminName,
      required this.adminPic,
      required this.months,
      required this.car});
}

List<menufactureItems> menuitems = [
  menufactureItems(
      Image: "assets/images/BMW.png",
      price: "500,000.00",
      carName: "Toyota Raize",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      car: "BMW"),
  menufactureItems(
      Image: "assets/images/nissan.png",
      price: "600,000.00",
      carName: "Kia Sportage 2020 white",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      car: "nissan"),
  menufactureItems(
      Image: "assets/images/ford.png",
      price: "899,999.99",
      carName: "Ford Fusion",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      car: "Ford"),
  menufactureItems(
      Image: "assets/images/general.png",
      price: "300,000.00",
      carName: "BMW F30",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      car: "General"),
  menufactureItems(
      Image: "assets/images/honda.png",
      price: "5,200.00",
      carName: "1960 Vespa 400",
      adminName: "admin",
      adminPic: "assets/images/admin.png",
      months: "3 months ago",
      car: "Honda"),
];
