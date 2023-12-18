import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  final List<String> imageText;
  final List<String> imagePaths;
  final Widget trailingIcons;
  final List<String> prices;

  const ItemCard({
    Key? key,
    required this.imageText,
    required this.imagePaths,
    required this.trailingIcons,
    required this.prices,
  }) : super(key: key);

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.imagePaths.length,
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
                            widget.imagePaths[index],
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
                  widget.imageText[index],
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Colors.grey[700],
                  ),
                ),
                SizedBox(height: 13,)
              ],
            ),
            subtitle: Text(
              '\$ ${widget.prices[index]}',
              style: TextStyle(
                color: Colors.deepPurpleAccent,
              ),
            ),
            trailing: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: 50.0, // Set your desired width
                height: 50.0, // Set your desired height
                child: widget.trailingIcons,
              ),
            ),
            onTap: () {},
          ),
        );
      },
    );
  }
}
