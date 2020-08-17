import 'package:flutter/material.dart';
import 'package:worker/helpers/style.dart';

class CardService extends StatelessWidget {
  final String title;
  final String photo;
  final String id;
  CardService({this.title, this.photo, this.id});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        )
      ),
        elevation: 5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(photo,height: 100,),
            SizedBox(height: 10,),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink[200],
                ),
              ),
            ),
            
          ],
        ));
  }
}
