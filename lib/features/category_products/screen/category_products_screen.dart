import 'package:flutter/material.dart';
import 'package:home_commerce/controllers/db/online/dio_helper.dart';
import 'package:home_commerce/models/productsEntity.dart';

class CategoryProductsScreen extends StatefulWidget {
   int categoryID;
  CategoryProductsScreen({super.key,required this.categoryID});

  @override
  State<CategoryProductsScreen> createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 55.0,horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                'Category Products',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              FutureBuilder(
                future: DioHelper.dio
                    .get("https://api.escuelajs.co/api/v1/categories/${widget.categoryID}/products"
                ),
                builder: (context,snapshot){
                  if(snapshot.connectionState==ConnectionState.waiting){
                    return Padding(
                      padding: const EdgeInsets.all(150.0),
                      child: Center(child:CircularProgressIndicator()),
                    );
                  } else if (snapshot.data!.statusCode==200){
                    List <Products> products = [];
                    for(var element in snapshot.data!.data){
                      products.add(Products.fromJson(element));
                    }
                    if(products.length == 0 )
                        return Center(child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 150.0),
                          child: Text("No Products Found",
                            style: TextStyle(
                              fontSize: 17,
                            ),
                          ),
                        ),);
                          else
                   return Container(
                      width: 400,
                      height: 600,
                      child: ListView.builder(
                        itemCount: products.length,
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
                                          child: Image.network(
                                            products[index].images![0] ?? "",
                                            width: 200,
                                            height: 150,
                                            fit: BoxFit.cover,
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
                                    products[index].title ?? "",
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.grey[700],
                                    ),
                                  ),
                                ],
                              ),
                              subtitle: Text(
                                '\$ ${products[index].price ?? ""}',
                                style: TextStyle(
                                  color: Colors.deepPurpleAccent,
                                ),
                              ),
                              trailing: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 25),
                                child: Container(
                                  width: 50.0,
                                  height: 50.0,
                                  child: Icon(
                                    Icons.shopping_cart,
                                    color: Colors.deepPurpleAccent,
                                  ),
                                ),
                              ),
                              onTap: () {},
                            ),
                          );
                        },
                      ),
                    );
                  }
                  else {
                    return Text('Error');
                  }
                },
              ),
            ],
          ),
        ),
      );
  }
}
