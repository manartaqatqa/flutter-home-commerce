import 'package:flutter/material.dart';
import 'package:home_commerce/features/languages/widgets/language_card.dart';
class LanguageScreenBody extends StatelessWidget {
  const LanguageScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> language = [
      {'title': 'English', 'image': 'images/english.jpg'},
      {'title': 'French', 'image': 'images/french.png'},
      {'title': 'German', 'image': 'images/german.png'},
      {'title': 'Chinese', 'image': 'images/chinese.png'},
      {'title': 'Japanese', 'image': 'images/japanese.png'},
      {'title': 'Turkish', 'image': 'images/turkish.png'},

    ];
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: Column(
        children: [
          Text(
            "Languages",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),
          ),
          SizedBox(height: 18,),
          Text(
            "Select a Language",
            style: TextStyle(
                fontSize: 17,
                color: Colors.grey[600]
            ),
          ),
          SizedBox(height: 20,),
          Container(
            width: 400,
            height: 600,
            child: ListView.builder(
              itemCount: language.length,
              itemBuilder: (context, index) {
                return LanguageCard(
                  title: language[index]['title']!,
                  imagePath: language[index]['image']!,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
