import 'package:flutter/material.dart';

class FakturDetail extends StatefulWidget {
  final String? noFaktur;
  final String? tanggalPenjualan;
  final String? namaCustomer;
  final String? jumlahBarang;
  final String? totalPenjualan;

  const FakturDetail({
    super.key,
    this.noFaktur,
    this.tanggalPenjualan,
    this.namaCustomer,
    this.jumlahBarang,
    this.totalPenjualan,
  });

  @override
  _FakturDetailState createState() => _FakturDetailState();
}

class _FakturDetailState extends State<FakturDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Faktur'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailItem('Kode Faktur', widget.noFaktur),
                const Divider(), // Garis pembatas
                _buildDetailItem('Tanggal Penjualan', widget.tanggalPenjualan),
                const Divider(),
                _buildDetailItem('Nama Customer', widget.namaCustomer),
                const Divider(),
                _buildDetailItem('Jumlah Barang', widget.jumlahBarang),
                const Divider(),
                _buildDetailItem('Total Penjualan', widget.totalPenjualan),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDetailItem(String label, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            value ?? '',
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
