import 'package:flutter/material.dart';

import '../models/Film.dart';
class Details extends StatefulWidget {
  final  Film film;
  const Details({super.key,required this.film});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.film.title,style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Image.asset(widget.film.image),
            SizedBox(height: 20,),
            Text(widget.film.description),
            SizedBox(height: 40,),

            Text(widget.film.price.toString()+" DT",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold),),
            SizedBox(height: 40,),

            Container(
              width: 150,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  foregroundColor: Colors.white
                ),
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.shopping_basket,color: Colors.white,),
                      SizedBox(width: 10,),
                      Text("Acheter",style: TextStyle(fontSize: 16),)
                    ],
                  )),
            )

          ],
        ),
      ),
    );
  }
}
