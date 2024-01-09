import 'package:flutter/material.dart';
import 'package:home_commerce/controllers/db/online/dio_helper.dart';
import 'package:home_commerce/models/productsEntity.dart';

class FeaturedProducts extends StatelessWidget {
  const FeaturedProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Featured Products',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 5,),
        FutureBuilder(
          future: DioHelper.dio
              .get("https://api.escuelajs.co/api/v1/products"),
          builder: (context,snapshot){
            if(snapshot.connectionState==ConnectionState.waiting){
              return Center(child:CircularProgressIndicator());
            } else if (snapshot.hasData && snapshot.data!.statusCode==200){
              List <Products> products = [];
              for(var element in snapshot.data!.data){
                products.add(Products.fromJson(element));
              }
              return SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                      },
                      child: Container(
                        margin: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16),
                                  child: Image.network(
                                    products[index].images?[0] ?? "" ,
                                    width: 130,
                                    height: 135,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                  bottom: 0,
                                  right: 0,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child:
                                        Icon(
                                            Icons.favorite_border,
                                          color: Colors.deepPurpleAccent,
                                        )
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width:90,
                              child: Text(
                                products[index].title ?? "",
                                style: const TextStyle(
                                  fontSize: 15
                                ),
                              ),
                            ),
                            Text(
                              '\$ ${products[index].price ?? ""}',
                              style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                  fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  // itemCount:products.length,
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
