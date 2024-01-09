import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:home_commerce/models/productsEntity.dart';

class SearchScreenBody extends StatefulWidget {
  @override
  _SearchScreenBodyState createState() => _SearchScreenBodyState();
}

class _SearchScreenBodyState extends State<SearchScreenBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final searchController = TextEditingController();
  final minPriceController = TextEditingController();
  final maxPriceController = TextEditingController();

  List<Products> searchResults = [];

  Future<void> _searchProducts() async {
    try {
      var response = await Dio().get(
        "https://api.escuelajs.co/api/v1/products/",
        queryParameters: {
          "title": searchController.text,
          "price_min": minPriceController.text,
          "price_max": maxPriceController.text,
        },
      );
      if (response.statusCode == 200) {
        List<Products> products = [];
        for (var element in response.data!) {
          products.add(Products.fromJson(element));
        }
        setState(() {
          searchResults = products;
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Text(
              "Search",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 37,),
            Form(
              key: formKey,
              child: Column(
                children: [
                  Row(
                    children: [
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.fromLTRB(3, 3, 7, 3),
                          child: TextFormField(
                            controller: searchController,
                            decoration: InputDecoration(
                              hintText: 'Search Here... ',
                              border: InputBorder.none,
                              prefixIcon: IconButton(
                                icon: Icon(Icons.search, color: Colors.deepPurpleAccent,),
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    await _searchProducts();
                                  }
                                },
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 25,),
                      Material(
                        elevation: 5.0,
                        borderRadius: BorderRadius.circular(100.0),
                        child: Container(
                          width: 50,
                          padding: EdgeInsets.all(8),
                          child: IconButton(
                            onPressed: () async {
                              if (formKey.currentState!.validate()) {
                                await _searchProducts();
                              }
                            },
                            icon: Icon(Icons.filter_list_alt),
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // Add input for minimum price
                      Container(
                        width: 120,
                        child: TextFormField(
                          controller: minPriceController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Min Price',
                              prefixIcon: Icon(Icons.money),
                              prefixIconColor: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                      // Add input for maximum price
                      Container(
                        width: 120,
                        child: TextFormField(
                          controller: maxPriceController,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              labelText: 'Max Price',
                            prefixIcon: Icon(Icons.money),
                              prefixIconColor: Colors.deepPurpleAccent
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Use the search results in ListView.builder
            if (searchResults.isNotEmpty)
              Container(
                width: 400,
                height: 600,
                child: ListView.builder(
                  itemCount: searchResults.length,
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
                                      searchResults[index].images![0] ?? "",
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
                              searchResults[index].title ?? "",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey[700],
                              ),
                            ),
                          ],
                        ),
                        subtitle: Text(
                          '\$ ${searchResults[index].price ?? ""}',
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
              )
            else
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 150.0),
                child: Text('No results found',style: TextStyle(
                  fontSize: 17,
                  color: Colors.deepPurpleAccent
                ),),
              ),
          ],
        ),
      ),
    );
  }
}
