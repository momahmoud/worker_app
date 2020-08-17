import 'package:flutter/material.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.pink[200],
            ),
            Container(
              height: MediaQuery.of(context).size.height-150,
              child: ListView(
                children: <Widget>[
                  listData('الصفحة الرئيسية', Icons.home, (){}),
                  listData('الطلبات', Icons.home, (){}),
                  listData('الحساب الشخصية', Icons.home, (){}),
                  listData('التنبيهات ', Icons.home, (){}),
                  listData('مساعدة ', Icons.home, (){}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget listData(String title, IconData icon, Function function){
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
    );
  }
}