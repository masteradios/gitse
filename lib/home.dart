import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  final _auth=FirebaseAuth.instance;
  User loggeduser;
  void logout ()async {
    _auth.signOut();
    Navigator.popUntil(context, ModalRoute.withName('/register'));
    Navigator.pushNamed(context, '/register');
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getcurrentuser();
  }
  void getcurrentuser() async {
    try {
      final user = _auth.currentUser;
      if (user != null)
      {
        loggeduser = user;
        print('hiiiiiiiiiiiiiiiiiiiiiiiiiiii'+loggeduser.email);

      }
    } catch (e) {}
  }
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold
        (
        drawer: Drawer(

          child: IconButton(icon: Icon(Icons.logout),onPressed: (){logout();},)),
        appBar: AppBar(),

      ),
    );
  }
}
