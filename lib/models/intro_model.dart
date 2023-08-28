class IntroList {
  final String image;
  final String title;
  final String subtitle;

  IntroList({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

List<IntroList> introList = [
  IntroList(
    image: 'assets/images/traveling_monochromatic_image.png',
    title: 'Make your own private travel plan',
    subtitle: 'Formulate your strategy to receive wonderful gift packs',
  ),
  IntroList(
    image: 'assets/images/customize_high_end_travel_image.png',
    title: 'Customize your High-end travel',
    subtitle: 'Countless high-end entertainment facilities',
  ),
  IntroList(
    image: 'assets/images/beach_monochromatic_image.png',
    title: 'High-end leisure projects to choose from',
    subtitle: "The world's first-class modern leisure and entertainment method",
  ),
];