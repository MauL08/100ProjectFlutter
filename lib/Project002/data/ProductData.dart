class ProductData {
  final String title;
  final String image;
  final int price;
  final int review;
  final String desc;

  const ProductData({
    required this.title,
    required this.image,
    required this.price,
    required this.review,
    required this.desc,
  });
}

const ProductList = [
  ProductData(
    title: "Bobo VR Z5",
    image: 'assets/img/Project002/vr3.png',
    price: 62,
    review: 28,
    desc:
        "Bobo VR Z5 is connected with Daydream platform, more interesting and easier for VR experience, Material lens made of professional optical lens, Aspheric Design and Maximum power up to 50Mw.",
  ),
  ProductData(
      title: "HP Reverb G2",
      image: 'assets/img/Project002/vr4.png',
      price: 72,
      review: 28,
      desc: ''),
  ProductData(
      title: "HTC Pro Series",
      image: 'assets/img/Project002/vr5.png',
      price: 82,
      review: 28,
      desc: ''),
];
