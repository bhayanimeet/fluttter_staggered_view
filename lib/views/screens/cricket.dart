import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Cricket extends StatefulWidget {
  const Cricket({Key? key}) : super(key: key);

  @override
  State<Cricket> createState() => _CricketState();
}

class _CricketState extends State<Cricket> {

  int currentPage = 0;

  List myList = [
    'https://www.thefamouspeople.com/profiles/images/virat-kohli-4.jpg',
    'https://tse1.mm.bing.net/th?id=OIP.x8RjAOwsOyz37vfUArAxCQHaFV&pid=Api&P=0',
    'http://www.dynamitenews.com/images/2019/12/23/dhoni-completes-15-years-in-international-cricket/3c540d6.jpg',
    'https://www.iwmbuzz.com/wp-content/uploads/2021/09/the-7-best-beard-styles-of-indian-cricketers-kl-rahul-to-hardik-pandya-8.jpg',
    'https://www.insidesport.in/wp-content/uploads/2022/03/WhatsApp-Image-2022-03-13-at-7.43.19-PM.jpeg?resize=768',
  ];

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cricketers"),
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
