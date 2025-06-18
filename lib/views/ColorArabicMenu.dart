import 'package:flutter/material.dart';
import 'package:test_grad/model/ArabicModel.dart';
import 'package:test_grad/views/IntroArabic.dart';


class ColorsArabicMenu extends StatefulWidget {
  @override
  State<ColorsArabicMenu> createState() => _ColorsArabicMenuState();
}

class _ColorsArabicMenuState extends State<ColorsArabicMenu> {
  List<ArabicModel> ColorArabicList = [
    ArabicModel(
        image: "assets/images/ColorsArabic/Black.jpg", text: "🖤الاسود"),
    ArabicModel(image: "assets/images/ColorsArabic/Blue.jpg", text: "💙الازرق"),
    ArabicModel(
        image: "assets/images/ColorsArabic/Green.jpg", text: "💚الاخضر"),
    ArabicModel(
        image: "assets/images/ColorsArabic/Orange.jpg", text: "🧡البرتقالي"),
    ArabicModel(image: "assets/images/ColorsArabic/Red.jpg", text: "❤الاحمر"),
    ArabicModel(image: "assets/images/ColorsArabic/Pink.jpg", text: "💗الوردي"),
    ArabicModel(
        image: "assets/images/ColorsArabic/Violet.jpg", text: "💜البنفسجي"),
    ArabicModel(
        image: "assets/images/ColorsArabic/White.jpg", text: "🤍الابيض"),
    ArabicModel(
        image: "assets/images/ColorsArabic/Yellow.jpg", text: "💛الاصفر")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 253, 248, 253),
        appBar: AppBar(
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          centerTitle: true,
          elevation: 10,
          shadowColor: Color.fromARGB(255, 245, 240, 240),
          title: const Text(
            "                    الالوان",
            style: TextStyle(
              //fontFamily: 'Lobster',
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 139, 71, 14),
            ),
          ),
          leading: GestureDetector(
            child: const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 40,
              ),
            ),
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => Home_Page_Arabic())),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 90),
          child: SizedBox(
            height: 490,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: _buildListItem,
              itemCount: ColorArabicList.length,
            ),
          ),
        ));
  }

  Widget _buildListItem(BuildContext context, int index) {
    ArabicModel NumArabic = ColorArabicList[index];
    return Padding(
      padding: const EdgeInsets.only(left: 30),
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 1.2,
        height: MediaQuery.of(context).size.height / 7.4,
        child: Card(
          color: Color.fromARGB(255, 205, 205, 205),
          elevation: 12,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Image.asset(
                  NumArabic.image,
                  fit: BoxFit.fill,
                  width: MediaQuery.of(context).size.width / 1.4,
                  height: MediaQuery.of(context).size.height / 2.8,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  NumArabic.text,
                  style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
