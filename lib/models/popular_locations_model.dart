
class PopularLocationsList {
  final String image;
  final String name;
  final double? cost;
  final double? rating;
  final double? numberLocations;

  PopularLocationsList({
    required this.image,
    required this.name,
    this.cost,
    this.rating,
    this.numberLocations,
  });
}

List<PopularLocationsList> popularLocationsList01 = [
  PopularLocationsList(
    image: 'assets/images/switzerland_image_01.png',
    name: 'Switzerland01',
    cost: 699,
    rating: 4.9,
  ),
  PopularLocationsList(
    image: 'assets/images/switzerland_image_02.png',
    name: 'Switzerland02',
    cost: 799,
    rating: 4.7,
  ),
  PopularLocationsList(
    image: 'assets/images/switzerland_image_03.png',
    name: 'Switzerland03',
    cost: 899,
    rating: 4.8,
  ),
  PopularLocationsList(
    image: 'assets/images/switzerland_image_04.png',
    name: 'Switzerland04',
    cost: 999,
    rating: 4.9,
  ),
];

List<PopularLocationsList> popularLocationsList02 = [
  PopularLocationsList(
    image: 'assets/images/western_strait_01.png',
    name: 'Western Starit 01',
    numberLocations: 16,
  ),
  PopularLocationsList(
    image: 'assets/images/beach_house_01.png',
    name: 'Beach house 01',
    numberLocations: 22,
  ),
  PopularLocationsList(
    image: 'assets/images/western_strait_02.png',
    name: 'Western Starit 02',
    numberLocations: 36,
  ),
  PopularLocationsList(
    image: 'assets/images/beach_house_02.png',
    name: 'Beach house 02',
    numberLocations: 44,
  ),
];