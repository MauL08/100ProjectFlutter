class Vegetables {
  final String name;
  final String price;
  final String image;

  const Vegetables({
    required this.name,
    required this.price,
    required this.image,
  });
}

const list = [
  Vegetables(
    name: 'Brocoli',
    price: '3.18',
    image: 'assets/img/Project003/brocoli.png',
  ),
  Vegetables(
    name: 'Tomato',
    price: '2.43',
    image: 'assets/img/Project003/tomato.png',
  ),
  Vegetables(
    name: 'Cucumber',
    price: '2.12',
    image: 'assets/img/Project003/cucumber.png',
  ),
  Vegetables(
    name: 'Eggplant',
    price: '3.21',
    image: 'assets/img/Project003/eggplant.png',
  ),
];
