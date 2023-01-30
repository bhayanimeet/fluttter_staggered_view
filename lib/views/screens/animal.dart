import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Animal extends StatefulWidget {
  const Animal({Key? key}) : super(key: key);

  @override
  State<Animal> createState() => _AnimalState();
}

class _AnimalState extends State<Animal> {
  int currentPage = 0;

  List myList = [
    'https://www.holidaygenie.com/blog/wp-content/uploads/2017/06/Sri-Lankan-leopard.jpg',
    'http://4.bp.blogspot.com/-hVS_HIotmSw/UTDROy2d5nI/AAAAAAAAAyM/6OLXsNITJE8/s1600/Animals+1.jpeg',
    'http://2.bp.blogspot.com/-gqYcI6dg0tM/UIDvhzEfKXI/AAAAAAAALrc/tha74Q404QU/s1600/Wildlife+Wallpapers+4.jpg',
    'https://tse4.mm.bing.net/th?id=OIP.QnL8eABOtuOhXfUOVzobFwHaEo&pid=Api&P=0',
    'https://c.pxhere.com/photos/07/6c/elephant_safari_animal_defence_color_animals_africa_nature-615275.jpg!d',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animals"),
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
