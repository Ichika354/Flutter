import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:first_flutter/ui/produk_form.dart';

class ProdukPage extends StatefulWidget {
  const ProdukPage({Key? key}) : super(key: key);

  @override
  _ProdukPageState createState() => _ProdukPageState();
}

class _ProdukPageState extends State<ProdukPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Produk'),
        actions: [
          GestureDetector(
            // menampilkan icon +
            child: const Icon(Icons.add),
            //pada saat icon + di tap
            onTap: () async{
              //berpindah ke halaman ProdukForm
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProdukForm()),
              );
            },
          )
        ],
      ),
      body: ListView(
        children: const [
          //List 1
          Card(
            child: ListTile(
              title: Text("Kulkas"),
              subtitle: Text("2400000"),
            ),
          ),
          //List 2
          Card(
            child: ListTile(
              title: Text("TV"),
              subtitle: Text("50000000"),
            ),
          ),
          //List 3
          Card(
            child: ListTile(
              title: Text("Mesin Cuci"),
              subtitle: Text("1500000"),
            ),
          ),
        ],
      ),
    );
  }
}