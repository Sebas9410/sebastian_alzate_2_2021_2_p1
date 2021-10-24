import 'dart:convert';
import 'dart:io';

import 'package:elephants/helpers/constans.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    super.initState();
    _getElephants();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: <Widget>[],
      )),
    );
  }
}

void _getElephants() async {
  var url = Uri.parse('${Constans.apiUrl}');
  var response = await http.post(
    url,
    headers: {
      'conten-type': 'aplication/json',
      'accept': 'aplication/json',
    },
  );
  print(response);
}
