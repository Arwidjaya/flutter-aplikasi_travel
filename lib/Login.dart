// login_page.dart

import 'package:flutter/material.dart';
import 'homepage.dart'; // Import HomePage untuk navigasi

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  // Warna dasar aplikasi, mirip dengan yang di gambar
  static const Color primaryColor = Color(0xFF00ADB5); // Hijau Toska

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Menggunakan Stack untuk latar belakang gradien dan konten
      body: Stack(
        children: [
          // Latar belakang gradien
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [primaryColor, Color(0xFF00FFD5)], // Gradien warna
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
          ),

          // Konten Login
          Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'APLIKASI TRAVEL',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Kotak Login dengan sudut membulat
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        // Icon User (di atas kotak)
                        Transform.translate(
                          offset: const Offset(0, -70), // Geser ke atas
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              border: Border.all(
                                  color: primaryColor, width: 4),
                            ),
                            padding: const EdgeInsets.all(12),
                            child: const Icon(
                              Icons.person,
                              size: 40,
                              color: primaryColor,
                            ),
                          ),
                        ),

                        const Text(
                          'LOGIN',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),

                        // Input Username
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text('USERNAME')),
                        const SizedBox(height: 5),
                        const TextField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Input Password
                        const Align(
                            alignment: Alignment.centerLeft,
                            child: Text('PASSWORD')),
                        const SizedBox(height: 5),
                        const TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.symmetric(horizontal: 10),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        const SizedBox(height: 25),

                        // Tombol Login (Kita gunakan Elevated Button)
                        ElevatedButton(
                          onPressed: () {
                            // Simulasi Login berhasil dan navigasi ke HomePage
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: primaryColor, // Warna tombol
                            minimumSize: const Size(double.infinity, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                        const SizedBox(height: 15),

                        // Teks "Don't have an account yet?"
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("Don't have an account yet? "),
                            GestureDetector(
                              onTap: () {
                                // Aksi untuk Register
                              },
                              child: const Text(
                                "Register",
                                style: TextStyle(
                                  color: primaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 40),

                  // Copyright
                  const Text(
                    '© copyright | Three Creative',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}