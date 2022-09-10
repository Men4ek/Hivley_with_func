import 'package:flutter/material.dart';
import 'package:hivley_app/textstyles/text.dart';
import 'package:hivley_app/widgets/main_screen/main_screen_widget.dart';

class SeeAllListHobbies extends StatelessWidget {
  const SeeAllListHobbies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 17,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 5),
            child: Container(
              padding: EdgeInsets.only(top: 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.orange),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Image.asset('assets/images/Rectangle 9.png'),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'Music',
                            style: textstyle,
                          ),
                          Text(
                            'Description:',
                            style: textstyle,
                          ),
                          SizedBox(height: 7),
                          Text(
                            'Work in progress...',
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
    );
  }
}
