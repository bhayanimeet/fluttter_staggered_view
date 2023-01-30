import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int currentPage = 0;

  List myList = [
    'https://www.asiaone.com/sites/default/files/original_images/Dec2020/20201217_samsunggalaxys21_letsgodigital.jpg',
    'https://tse3.mm.bing.net/th?id=OIP.CZA7zHl5SaynnpPneuMuoAHaGw&pid=Api&P=0',
    'https://cdn.wccftech.com/wp-content/uploads/2022/09/iPhone-14-Pro-and-iPhone-14-Pro-Max-with-Dynamic-Island.jpg',
    'https://photos.dialcom.lk/big/items/vivo-y51-mobile-phones-price-in-sri-lanka_3544_jpg',
    'https://tse4.mm.bing.net/th?id=OIP.lAuVpct7DDEdSt_Z_vbAtQHaD4&pid=Api&P=0',
  ];

  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mobiles"),
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
