import 'package:flutter/material.dart';

class Catagory extends StatefulWidget {
  const Catagory({super.key});

  @override
  State<Catagory> createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  @override
  Widget build(BuildContext context) {
    return   GridView.builder(
      shrinkWrap: true,
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.60,
      ),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Card(
            child: Container(
              width: 160,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nike',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'AirMax',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Image.asset('assets/nike.png'),
                    Row(
                      children: [
                        Text(
                          "\$",
                          style: TextStyle(
                            color: Colors.grey.shade800,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '\$200',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(fontSize: 16),
                        ),
                        Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon:Icon(Icons.favorite,color: Colors.red,),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.shopping_basket, size: 30,color: Colors.orangeAccent,)
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "Review",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 15,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.orangeAccent,
                          size: 15,
                        ),
                        Icon(
                          Icons.star_border,
                          color: Colors.orangeAccent,
                          size: 15,
                        ),
                        Text(
                          "4.5",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
