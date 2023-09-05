import 'package:demo_1/models/popular_locations_model.dart';
import 'package:demo_1/view/widget/button_circle_widget.dart';
import 'package:demo_1/view/widget/input_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  late ScrollController popularList01Controller;
  late ScrollController popularList02Controller;
  int currentIndex = 0;

  void onPressFilter() {
    // ignore: avoid_print
    print('You are click filter');
  }

  @override
  void initState() {
    popularList01Controller = ScrollController();
    popularList02Controller = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    popularList01Controller.dispose();
    popularList02Controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 20, bottom: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60, right: 20),
              child: SizedBox(
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find your next trip',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'PoppinsMedium',
                          color: Color(0xAA818181)),
                    ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    const Text(
                      'Nordic scenery',
                      style: TextStyle(
                          fontSize: 26,
                          fontFamily: 'PoppinsSemiBold',
                          color: Color(0xAA000000)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: InputWidget(
                            hintText: 'Search ...',
                            controller: searchController,
                            iconInput: 'assets/images/search_icon.png',
                          ),
                        ),
                        const SizedBox(width: 20),
                        ButtonCircleWidget(
                          diameter: 50,
                          icon: 'assets/images/filter_icon.png',
                          onPress: onPressFilter,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Popular locations',
                    style:
                        TextStyle(fontSize: 20, fontFamily: 'PoppinsSemiBold'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    width: double.infinity,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: popularLocationsList01.length,
                        controller: popularList01Controller,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 150,
                            width: 250,
                            margin: EdgeInsets.only( right: index == popularLocationsList01.length - 1 ? 0 : 10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                            ),
                            child: Stack(
                              children: [
                                Image.asset( popularLocationsList01[index].image, fit: BoxFit.cover, ),
                                Positioned(
                                  left: 0,
                                  right: 0,
                                  bottom: 0,
                                  child: Padding( padding: const EdgeInsets.only( left: 15, right: 15, bottom: 15),
                                    child: SizedBox(
                                      height: 60,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            popularLocationsList01[index].name,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontFamily: 'AndikaRegular',
                                                fontSize: 20),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                'from  \$${popularLocationsList01[index].cost}',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontFamily: 'PoppinsRegular',
                                                    fontSize: 12),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    '${popularLocationsList01[index].rating}',
                                                    style: const TextStyle(
                                                        color: Colors.white,
                                                        fontFamily:
                                                            'PoppinsRegular',
                                                        fontSize: 12),
                                                  ),
                                                  SizedBox(width: 5,),
                                                  Image.asset(
                                                      'assets/images/star_icon.png',
                                                      width: 15,
                                                      height: 15,
                                                      fit: BoxFit.cover)
                                                ],
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 300,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Popular locations', style: TextStyle(fontSize: 20, fontFamily: 'PoppinsSemiBold'),),
                  SizedBox(height: 10,),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      controller: popularList02Controller,
                      itemCount: popularLocationsList02.length,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 142,
                          margin: EdgeInsets.only( right: index == popularLocationsList01.length - 1 ? 0 : 10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Stack(
                            children: [
                              Image.asset(popularLocationsList02[index].image, fit: BoxFit.cover),
                              Positioned(
                                left: 0,
                                right: 0,
                                bottom: 10,
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Column(
                                    children: [
                                      Text(popularLocationsList02[index].name, style: TextStyle(fontSize: 16, fontFamily: 'AndikaRegular', color: Colors.white),),
                                      Text('${popularLocationsList02[index].numberLocations} ${popularLocationsList02[index].numberLocations == 1 ? 'location' : 'locations'}',style: TextStyle(fontSize: 12, fontFamily: 'PoppinsRegular', color: Colors.white),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        );
                    },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
