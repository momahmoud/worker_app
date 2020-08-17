// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:worker/screens/home_screen.dart';

// class SignUp extends StatefulWidget {
//   @override
//   _SignUpState createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   final _scaffoldKey = GlobalKey<ScaffoldState>();
//   String phoneNumber;
//   String smsCode;
//   String verificationCode;

//   Future<void> verifyPhone() async {
//     final PhoneCodeAutoRetrievalTimeout autoRetrive = (String verId) {
//       this.verificationCode = verId;
//     };
//     final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeSend]) {
//       this.verificationCode = verId;
//       smsDialog(context).then((value)  {
//         print('signin');
//       });
//     };
//     final PhoneVerificationCompleted verSuccess =
//         (AuthCredential phoneAuthCard) {
//       print('sucee');
//     };
//     final PhoneVerificationFailed verFailed = (AuthException authException) {
//       print('${authException.message}');
//     };
//     await FirebaseAuth.instance.verifyPhoneNumber(
//       phoneNumber: this.phoneNumber,
//       timeout: Duration(seconds: 5),
//       verificationCompleted: verSuccess,
//       verificationFailed: verFailed,
//       codeSent: smsCodeSent,
//       codeAutoRetrievalTimeout: autoRetrive,
//     );
//   }

//   void _signInWithPhoneNumberAndSMSCode() async {
//     AuthCredential authCreds = PhoneAuthProvider.getCredential(
//         verificationId: verificationCode, smsCode: smsCode);
//     final FirebaseUser user =
//         (await FirebaseAuth.instance.signInWithCredential(authCreds)).user;
//     print("User Phone number is" + user.phoneNumber);

//     verificationCode = '';
//     phoneNumber = '';
//     setState(() => verificationCode = null);
//     FocusScope.of(context).requestFocus(FocusNode());
//     _showSnackBar('Sign up with phone success. Check your firebase.');
//   }
//    void _showSnackBar(msg){
//     final snackBar = SnackBar(content: Text(msg));
//     _scaffoldKey.currentState.showSnackBar(snackBar);
//   }

//   Future<bool> smsDialog(context) {
//     return showDialog(
//         context: context,
//         barrierDismissible: false,
//         builder: (context) {
//           return AlertDialog(
//             title: Text('Enter sms code'),
//             content: TextField(
//               onChanged: (value) {
//                 this.smsCode = value;
//               },
//             ),
//             contentPadding: EdgeInsets.all(10),
//             actions: <Widget>[
//               FlatButton(
//                 onPressed: () {
//                   FirebaseAuth.instance.currentUser().then((user) {
//                     if (user != null) {
//                       Navigator.of(context).pop();
//                       Navigator.of(context).push(
//                           MaterialPageRoute(builder: (ctx) => HomeScreen()));
//                     } else {
//                       Navigator.of(context).push(
//                           MaterialPageRoute(builder: (ctx) => HomeScreen()));
//                       _signInWithPhoneNumberAndSMSCode();
//                     }
//                   });
//                 },
//                 child: Text('Done'),
//               )
//             ],
//           );
//         });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: _scaffoldKey,
//       body: Center(
//         child: Container(
//           padding: EdgeInsets.all(25),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               TextField(
//                 decoration: InputDecoration(hintText: 'Enter Phone number'),
//                 onChanged: (value) {
//                   this.phoneNumber = value;
//                 },
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               RaisedButton(
//                 onPressed: verifyPhone,
//                 child: Text('Verify'),
//                 textColor: Colors.white,
//                 color: Colors.lightBlue,
//                 elevation: 10,
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
