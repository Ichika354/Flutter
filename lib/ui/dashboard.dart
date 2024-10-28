import 'package:first_flutter/ui/faktur_detail.dart';
import 'package:flutter/material.dart';
import 'package:first_flutter/data_dummy.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white, // Warna teks menjadi putih
          fontSize: 20, // Ukuran font teks
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            padding: const EdgeInsets.all(10),
            itemCount: fakturData.length,
            itemBuilder: (context, index) {
              Map<String, String> data = fakturData[index];
              return ItemProduk(
                noFaktur: data['No Faktur Penjualan'],
                tanggalPenjualan: data['Tanggal Penjualan'],
                namaCustomer: data['Nama Customer'],
                jumlahBarang: data['Jumlah Barang'],
                totalPenjualan: data['Total Penjualan'],
              );
            },
          ))
        ],
      ),
    );
  }
}

class ItemProduk extends StatelessWidget {
  final String? noFaktur;
  final String? tanggalPenjualan;
  final String? namaCustomer;
  final String? jumlahBarang;
  final String? totalPenjualan;

  const ItemProduk({
    super.key,
    this.noFaktur,
    this.tanggalPenjualan,
    this.namaCustomer,
    this.jumlahBarang,
    this.totalPenjualan,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman FakturDetail dengan mengirimkan data lengkap
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FakturDetail(
              noFaktur: noFaktur,
              tanggalPenjualan: tanggalPenjualan,
              namaCustomer: namaCustomer,
              jumlahBarang: jumlahBarang,
              totalPenjualan: totalPenjualan,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
        child: ListTile(
          title: Text(
            'No Faktur: $noFaktur',
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('Nama Customer: $namaCustomer'),
          contentPadding: const EdgeInsets.all(16.0),
        ),
      ),
    );
  }
}
