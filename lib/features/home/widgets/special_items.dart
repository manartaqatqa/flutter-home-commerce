import 'package:flutter/material.dart';
import 'package:home_commerce/controllers/db/online/dio_helper.dart';
import 'package:home_commerce/features/category_products/screen/category_products_screen.dart';
import 'package:home_commerce/models/categoriesEntity.dart';
import 'package:dio/dio.dart';

class SpecialItems extends StatelessWidget {
  const SpecialItems({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Special for you',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        FutureBuilder(
        future: DioHelper.dio
            .get("https://api.escuelajs.co/api/v1/categories"),
            builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child:CircularProgressIndicator());
            } else if (snapshot.data!.statusCode==200){
            List <Categories> categories = [];
            if(snapshot.data!.data != null){
              for(var element in snapshot.data!.data){
              categories.add(Categories.fromJson(element));
            }
            }

                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: categories.length,
                      itemBuilder: (BuildContext context, int index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                              MaterialPageRoute(builder: (context) => CategoryProductsScreen(categoryID: categories[index].id!))
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    categories[index].image ?? "",
                                    width: 250,
                                    height: 120,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  left: 0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      categories[index].name ?? "",
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      // itemCount:categories.length,
                    ),
                  );
            }
    else {
      return Text('Error');
    }
    },
        ),
      ],
    );
  }
}
