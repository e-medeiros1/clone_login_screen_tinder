import 'package:clone_tinder/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const CloneTinder());
}

class CloneTinder extends StatelessWidget {
  const CloneTinder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        fontFamily: 'Ubuntu',
      ),
      initialRoute: '/Teste',
      routes: {
        '/Teste': (_) => Teste(),
      },
    );
  }
}
