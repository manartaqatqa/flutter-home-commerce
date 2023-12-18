import 'package:flutter/material.dart';
class Promotions extends StatelessWidget {
   Promotions({super.key});
  final List<String> imagePaths = [
    'images/laptop.jpg',
    'images/accessories.jpg',
  ];
  final List<String> imageText = [
    'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
    'consectetur adipisicing elit Lorem ipsum dolor sit amet .',
  ];
  final List<String> times = [
    '10:00 AM',
    '1 day ago',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Promotions",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
          ),
        ),
        Container(
            width: 400,
            height: 300,
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0), // Adjust the value as needed
              itemCount: imagePaths.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.symmetric(vertical: 17),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: SizedBox(
                        width: 70.0,
                        height: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Column(
                            children: [
                              Expanded(
                                child: Image.asset(
                                  imagePaths[index],
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          imageText[index],
                          style: TextStyle(
                              fontSize: 18.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                        SizedBox(height: 13,)
                      ],
                    ),
                    subtitle: Text(
                      ' ${times[index]}',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                    onTap: () {},
                  ),
                );
              },
            )
        ),
      ],
    );
  }
}
