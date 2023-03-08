import 'package:flutter/material.dart';
import 'package:horsinaround/views/login_view.dart';
import 'package:horsinaround/views/mainmenuwithtabs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const LoginView(),
    ),
  );
}
