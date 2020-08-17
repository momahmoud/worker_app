import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const NUMBER = "number";
  static const ID = "id";
  static const Name = "name";
  static const AccountType = "type";

  String _number;
  String _id;
  String _name;
  String _type;

//  getters
  String get number => _number;
  String get id => _id;
  String get name => _name;
  String get type => _type;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    _number = snapshot.data[NUMBER];
    _id = snapshot.data[ID];
    _name = snapshot.data[Name];
    _type = snapshot.data[AccountType];
  }
}