import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hivley_app/textstyles/text.dart';
import 'package:hivley_app/widgets/main_screen/main_screen_widget.dart';

import '../colors/colors.dart';

var featured = [
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Amy’s mock Interviews',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Jacob’s resume tips',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Lion Tutors',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin1',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin2',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin3',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin4',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin5',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin6',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin7',
      description: 'Work in progress'),
  Movie(
      imageName: Image.asset('assets/images/Rectangle 3.png'),
      main: 'Somethin8',
      description: 'Work in progress'),
];

class Movie {
  final Image imageName;
  final String main;
  String description;

  Movie(
      {required this.imageName, required this.main, required this.description});
}

class SeeAllListFeatured extends StatefulWidget {
  const SeeAllListFeatured({Key? key}) : super(key: key);

  @override
  State<SeeAllListFeatured> createState() => _SeeAllListFeaturedState();
}

class _SeeAllListFeaturedState extends State<SeeAllListFeatured> {
  final serchController = TextEditingController();
  var filteredCards = <Movie>[];
  void searchCards() {
    final query = serchController.text;
    if (query.isNotEmpty) {
      filteredCards = featured.where((Movie movie) {
        return movie.main.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      filteredCards = featured;
    }
    setState(() {});
  }

  @override
  void initState() {
    serchController.addListener(searchCards);
    filteredCards = featured;
    super.initState();
  }

  void onFeatureTap(int index) {
    Navigator.of(context).pushNamed('/feature_details');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ListView.builder(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            padding: EdgeInsets.only(top: 135),
            itemCount: filteredCards.length,
            itemBuilder: (BuildContext context, int index) {
              final featuredCard = filteredCards[index];
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: Container(
                  padding: EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.orange),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: InkWell(
                    onTap: () => onFeatureTap(index),
                    child: Row(
                      children: [
                        featuredCard.imageName,
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                featuredCard.main,
                                style: textstyle,
                              ),
                              Text(
                                'Description:',
                                style: textstyle,
                              ),
                              SizedBox(height: 7),
                              Text(
                                featuredCard.description,
                                style: featuredList,
                                maxLines: 4,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 30),
            child: TextField(
              controller: serchController,
              decoration: InputDecoration(
                hintText: 'Search for some card',
                hintStyle:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                fillColor: buttonOrange.withAlpha(235),
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
