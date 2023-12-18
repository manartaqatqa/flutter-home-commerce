import 'package:flutter/material.dart';
class ProductDetailsScreenBody extends StatefulWidget {
  const ProductDetailsScreenBody({super.key});

  @override
  State<ProductDetailsScreenBody> createState() => _ProductDetailsScreenBodyState();
}

class _ProductDetailsScreenBodyState extends State<ProductDetailsScreenBody> {
  late String imagePath;
  late String title;
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    imagePath = arguments['imagePath'] ?? '';
    title = arguments['title'] ?? '';
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Image.asset(
            imagePath,
            height: 400,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 350,
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
            ),
            child: Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$ 2452.75',
                            style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(Icons.favorite,color: Colors.red,)
                        ],
                      ),
                      SizedBox(height: 15,),
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 15,),
                      Text(
                        'Description',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 5,),
                      Container(
                        width: 300,
                        child: Text(
                          'Lorem ipsum dolor sit amet. Nulla facilisi. Sed do et dolore magna aliqua. Ut enim ad minim veniam.',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color:Colors.grey[400],
                              height: 2
                          ),
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text(
                        'Color',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.indigo,
                          ),
                          SizedBox(width: 8),
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.teal,
                          ),
                          SizedBox(width: 8),
                          CircleAvatar(
                            radius: 17,
                            backgroundColor: Colors.brown,
                          ),
                        ],
                      )
                    ],
                  ),
                )
            ),
          ),
        ),
        Positioned(
          bottom: 16,
          left: 30,
          right: 30,
          child: ElevatedButton(
            onPressed: () {
              // Handle button press
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepPurpleAccent),
              minimumSize: MaterialStateProperty.all(Size(180, 55)),
            ),
            child: Text('Add to Cart'),
          ),
        ),
        Positioned(
          top: 45,
          left: 25,
          child: SizedBox(
            width: 40,
            height: 40,
            child: FloatingActionButton(
              onPressed: () {
                Navigator.pop(context);
              },
              backgroundColor: Colors.white,
              child: Icon(Icons.arrow_back_ios, color: Colors.grey[800]),
            ),
          ),
        ),
      ],
    );
  }
}
