import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../colors/colors.dart';
import '../../textstyles/text.dart';

class FeatureDetails extends StatefulWidget {
  const FeatureDetails({super.key});

  @override
  State<FeatureDetails> createState() => _FeatureDetailsState();
}

class _FeatureDetailsState extends State<FeatureDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 35,
        iconTheme: IconThemeData(
          color: buttonOrange,
          size: 30,
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/images/Rectangle 13.png'),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Gabriel’s studio',
                    style: mainScreenTextCat,
                  ),
                ),
                CommisionWidget(),
                Text('Description:', style: textstyle),
                DescriptionMenu(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CommisionWidget extends StatelessWidget {
  const CommisionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 9, bottom: 21),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
          child: Text(
            '\u002420/Commision',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12),
          ),
        ),
      ),
    );
  }
}

class DescriptionMenu extends StatelessWidget {
  const DescriptionMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 11),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hi I’m Gabriel, I’m a rising sophmore. I can make these for you:',
            style: homeScreenWidg,
          ),
          Text('1. Posters', style: homeScreenWidg),
          Text('2. Vector Illustrations', style: homeScreenWidg),
          Text('3. Photoshop Composites', style: homeScreenWidg),
          Text('4. Book Covers', style: homeScreenWidg),
          Text('5. Social Media Banners', style: homeScreenWidg),
          SizedBox(height: 15),
          Text(
            'Please note: ',
            style: homeScreenWidg,
          ),
          Text(
            'Other services may be available on request (prices may vary)',
            style: homeScreenWidg,
          ),
        ],
      ),
    );
  }
}
