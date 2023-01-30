import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Birds extends StatefulWidget {
  const Birds({Key? key}) : super(key: key);

  @override
  State<Birds> createState() => _BirdsState();
}

class _BirdsState extends State<Birds> {
  int currentPage = 0;

  List myList = [
    'https://img.xcitefun.net/users/2014/07/358119,xcitefun-beautiful-bird-3.jpg',
    'http://3.bp.blogspot.com/-gDwfucf4FlI/UKryvAHujRI/AAAAAAAANx8/roUeYIlki7Q/s1600/Love%2BBirds%2BWallpapers%2B13.jpg',
    'https://tse1.mm.bing.net/th?id=OIP.RaCQEVSL68fgRUVjh5JnpwHaEK&pid=Api&P=0',
    'https://tse1.mm.bing.net/th?id=OIP.PtqCxJbFBmH4BQTQdb7v4wHaEK&pid=Api&P=0',
    'https://tse3.mm.bing.net/th?id=OIP.GgC1ajViK5hNFVosJTgPvQHaFe&pid=Api&P=0',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Birds"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselSlider(
              carouselController: carouselController,
              options: CarouselOptions(
                initialPage: currentPage,
                onPageChanged: (val, _) {
                  setState(() {
                    currentPage = val;
                  });
                },
                enlargeCenterPage: true,
                height: 250,
              ),
              items: myList
                  .map((e) => SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Image.network(e, fit: BoxFit.fill),
              ))
                  .toList(),
            ),
            const SizedBox(height: 40),
            Container(
              width: 130,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: myList.map(
                      (e) {
                    int i = myList.indexOf(e);
                    return GestureDetector(
                      onTap: () {
                        carouselController.animateToPage(
                          i,
                          curve: Curves.easeInOut,
                          duration: const Duration(seconds: 1000),
                        );
                      },
                      child: CircleAvatar(
                        radius: 8,
                        backgroundColor: (i == currentPage)
                            ? Colors.grey.shade600
                            : Colors.grey.shade300,
                      ),
                    );
                  },
                ).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
