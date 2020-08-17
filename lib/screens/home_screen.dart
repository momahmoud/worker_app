import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:worker/helpers/style.dart';
import 'package:worker/models/service.dart';
import 'package:worker/providers/auth.dart';
import 'package:worker/widgets/app_drawer.dart';
import 'package:worker/widgets/card_service.dart';
import 'package:worker/widgets/custom_text.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // final auth = Provider.of<AuthProvider>(context);

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        drawer: AppDrawer(),
        appBar: AppBar(
          backgroundColor: Colors.pink[200],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CustomText(
                size: 20,
                weight: FontWeight.bold,
                text: "Worker",
                color: Colors.white,
              ),
              SizedBox(width: 10,),
              Image(
                image: AssetImage('images/key-skills.png'),
                width: 35,
              )
            ],
          ),
          centerTitle: true,
          elevation: 0.5,
        ),
        backgroundColor: white,
        body: GridView.builder(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          itemCount: serviceData.length,
          itemBuilder: (contxet, index) {
            return CardService(
              id: serviceData[index].id,
              title: serviceData[index].title,
              photo: serviceData[index].photo,
            );
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10),
        ),
      ),
    );
  }
}
