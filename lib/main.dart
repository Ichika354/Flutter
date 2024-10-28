// import 'package:first_flutter/hello_word.dart';
import 'package:first_flutter/ui/menu.dart';
// import 'package:first_flutter/ui/produk_detail.dart';
// import 'package:first_flutter/ui/produk_form.dart';
// import 'package:first_flutter/ui/produk_page.dart';
import 'package:flutter/material.dart';
// import 'package:first_flutter/column_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Management System",
      home: MenuPage(),
    );
  }
}

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "First Flutter App",
//       home: HelloWorld(),

//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: "Aplikasi Flutter Pertama",
//       home: ProdukPage(),
//     );
//   }
// }
