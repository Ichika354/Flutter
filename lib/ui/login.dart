import 'package:flutter/material.dart';
import 'package:first_flutter/ui/menu.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(
          color: Colors.white, // Warna teks menjadi putih
          fontSize: 20, // Ukuran font teks
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding:
            const EdgeInsets.all(20.0), // Menambahkan padding di sekitar body
        child: SingleChildScrollView(
          child: Column(
            children: [
              _textboxUsername(),
              const SizedBox(height: 10), // Menambahkan jarak antar textbox
              _textboxPassword(),
              const SizedBox(height: 20),
              _tombolLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _textboxUsername() {
    return TextField(
      decoration: const InputDecoration(labelText: "Username"),
      controller: _usernameController,
    );
  }

  Widget _textboxPassword() {
    return TextField(
      decoration: const InputDecoration(labelText: "Password"),
      obscureText: true, // Menyembunyikan teks password
      controller: _passwordController,
    );
  }

  Widget _tombolLogin() {
    return ElevatedButton(
      onPressed: () {
        // Mengambil data dari controller
        String username = _usernameController.text;
        String password = _passwordController.text;

        // Validasi username dan password
        if (username == "reza" && password == "admin") {
          // Jika username dan password benar, navigasi ke halaman MenuPage
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const MenuPage(),
          ));
        } else if (username.isEmpty || password.isEmpty) {
          // Jika salah satu field kosong, tampilkan pesan kesalahan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                content: Text('Username dan Password tidak boleh kosong')),
          );
        } else {
          // Jika username atau password salah, tampilkan pesan kesalahan
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Username atau Password salah')),
          );
        }
      },
      child: const Text('Login'),
    );
  }
}
