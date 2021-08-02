class PlaceData {
  final String title;
  final String price;
  final String image;

  const PlaceData({
    required this.title,
    required this.price,
    required this.image,
  });
}

const PlaceList = [
  PlaceData(
    title: 'Apartemen Cahaya',
    price: '200.000',
    image: 'assets/img/Project001/apart1.jpg',
  ),
  PlaceData(
    title: 'Apartemen Pelangi',
    price: '300.000',
    image: 'assets/img/Project001/apart2.jpg',
  ),
  PlaceData(
    title: 'Hotel Mawar',
    price: '250.000',
    image: 'assets/img/Project001/hotel2.jpg',
  ),
  PlaceData(
    title: 'Hotel Teratai',
    price: '400.000',
    image: 'assets/img/Project001/hotel3.jpg',
  ),
];
