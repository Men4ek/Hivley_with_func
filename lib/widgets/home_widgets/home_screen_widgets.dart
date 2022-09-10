import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hivley_app/textstyles/text.dart';
import 'package:hivley_app/all_cards_widget/feature_all.dart';

import '../../colors/colors.dart';

class HomeWidgetListView extends StatelessWidget {
  const HomeWidgetListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final seeAllFeatured = featured.length;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70),
        child: Column(
          children: [
            ProfilePic(),
            const SizedBox(height: 20),
            SearchField(),
            const SizedBox(height: 30),
            RowMenu(
              bigText: 'Featured',
              count: 'See All ($seeAllFeatured)',
              onpress: () => Navigator.of(context).pushNamed('/feature_all'),
            ),
            CategoriesListView(
              image: Image.asset('assets/images/Rectangle 3.png'),
              text: 'Amy’s mock \n Interviews',
            ),
            RowMenu(
              bigText: 'Graphics and Design',
              count: 'See All',
              onpress: () => Navigator.of(context).pushNamed('/graphics_all'),
            ),
            CategoriesListView(
              image: Image.asset('assets/images/Rectangle 6.png'),
              text: 'Graphics and \n Design',
            ),
            RowMenu(
              bigText: 'Hobbies',
              count: 'See All',
              onpress: () => Navigator.of(context).pushNamed('/hobbies_all'),
            ),
            CategoriesListView(
              image: Image.asset('assets/images/Rectangle 9.png'),
              text: 'Music',
            ),
            SizedBox(height: 15),
            MoreCategoriesButton(),
          ],
        ),
      ),
    );
  }
}

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset('assets/images/whh_notification.png'),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'What are you looking for today?',
          hintStyle: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))),
          fillColor: buttonOrange,
          filled: true,
        ),
      ),
    );
  }
}

class RowMenu extends StatefulWidget {
  final String bigText;
  final String count;
  final void Function() onpress;

  const RowMenu(
      {Key? key,
      required this.bigText,
      required this.count,
      required this.onpress})
      : super(key: key);

  @override
  State<RowMenu> createState() => _RowMenuState();
}

class _RowMenuState extends State<RowMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.bigText, style: mainScreenTextCat),
          TextButton(
            onPressed: widget.onpress,
            child: Text(widget.count),
            style: TextButton.styleFrom(
              primary: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesListView extends StatelessWidget {
  final Image image;
  final String text;
  const CategoriesListView({Key? key, required this.image, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        height: 130,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (BuildContext, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [image, Text(text, style: homeScreenWidg)],
              ),
            );
          },
        ),
      ),
    );
  }
}

class MoreCategoriesButton extends StatelessWidget {
  const MoreCategoriesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Text(
        'Show more categories',
        style: TextStyle(
            color: Color(0xff000000),
            fontWeight: FontWeight.w600,
            fontSize: 18),
      ),
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color(0xffFFA410),
          shape: const StadiumBorder(),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13)),
    );
  }
}
