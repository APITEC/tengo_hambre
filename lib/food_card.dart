import 'package:flutter/material.dart';

class FoodCard extends StatefulWidget {
  final name;
  final image;
  final price;
  final rating;
  final favorite;

  FoodCard({this.name, this.image, this.price, this.rating, this.favorite});

  @override
  _FoodCardState createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  bool favorite;

  List<Widget> rating() {
    List<Widget> rating = List();
    List<int>.generate(widget.rating, (i) {
      rating.add(Icon(
        Icons.star,
        color: Colors.redAccent,
      ));
    });
    List<int>.generate(5 - widget.rating, (i) {
      rating.add(Icon(
        Icons.star_border,
        color: Colors.redAccent,
      ));
    });
    return rating;
  }

  @override
  Widget build(BuildContext context) {
    favorite = widget.favorite;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        elevation: 3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  child: Image.network(widget.image),
                ),
                Positioned(
                  top: 10,
                  left: 10,
                  child: Text(
                    widget.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon: Icon(
                      favorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.redAccent,
                    ),
                    onPressed: () {
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Q${widget.price}',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: rating(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
