// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_2/login_page.dart';

// ignore: camel_case_types
class profile extends StatelessWidget {
  const profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final avatar = Padding(
      padding: const EdgeInsets.all(20),
      child: Hero(
          tag: 'logo',
          child: SizedBox(
            height: 160,
            child: Image.asset('assets/images/profile.jpg'),
          )),
    );
    final description = Padding(
      padding: const EdgeInsets.all(10),
      child: RichText(
        textAlign: TextAlign.justify,
        text: const TextSpan(
            text:
                'Hansen Charte NPM 065119011 Kuliah Di Universitas Pakuan Jurusan Ilmu Komputer',
            style: TextStyle(color: Colors.black, fontSize: 30)),
      ),
    );
    final buttonLogout = FlatButton(
        child: const Text(
          'Logout',
          style:
              TextStyle(color: Color.fromARGB(221, 161, 16, 16), fontSize: 36),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        });
    return (Scaffold(
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          children: <Widget>[avatar, description, buttonLogout],
        ),
      ),
    ));
  }
}
