import 'package:flutter/material.dart';
import 'package:home_commerce/widgets/bottom_nav.dart';
class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesState();
}

class _CategoriesState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNav(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
        child: Center(
          child: Column(
            children: [
              Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
              SizedBox(height: 40,),
              Material(
                elevation: 5.0,
                borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  width: 400,
                  padding: EdgeInsets.fromLTRB(3, 3, 7, 3),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search Category',
                      border: InputBorder.none,
                      prefixIcon: IconButton(
                        icon: Icon(Icons.search,color: Colors.deepPurpleAccent,),
                        onPressed: () {
                        },
                      ),
                    ),
                  ),
                ),
              ),
          SizedBox(height: 20,),
          Container(
            width: 400,
            height: 500,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 4,
              itemBuilder: (BuildContext context, int index) {
                List<String> imagePaths = [
                  'images/headphones.jpg',
                  'images/phone.jpg',
                  'images/ipad.jpeg',
                  'images/phone_covers.jpg',
                ];
                 List<String> imageText = [
                  'Headphones',
                  'Phones',
                   'Ipads',
                   'Phone Accessories'
                ];

                return Container(
                  margin: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: Image.asset(
                          imagePaths[index],
                          width: 200,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                        top: 0,
                        left: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            imageText[index],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
            ],
          ),
        ),
      ),
    );
  }
}
