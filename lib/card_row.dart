import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart'; // Import paket Lottie

class CardRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Card Suhu
        Expanded(
          child: Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white, // Mengubah warna latar belakang menjadi putih
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(2, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Menempatkan konten di tengah
              children: [
                SizedBox(height: 8), // Jarak antara judul dan gambar
                Lottie.asset(
                  'assets/suhu.json', // Ganti dengan path animasi Lottie Anda
                  height: 80, // Sesuaikan tinggi animasi
                  width: 80, // Sesuaikan lebar animasi
                ),
                SizedBox(height: 4), // Jarak antara gambar dan nilai
                Text(
                  '28°C',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black, // Mengubah warna teks menjadi hitam
                  ),
                ),
              ],
            ),
          ),
        ),

        // Card Daun
        Expanded(
          child: Container(
            margin: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white, // Mengubah warna latar belakang menjadi putih
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 5,
                  offset: Offset(2, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Menempatkan konten di tengah
              children: [
                SizedBox(height: 8), // Jarak antara judul dan gambar
                Lottie.asset(
                  'assets/daun.json', // Ganti dengan path animasi Lottie Anda
                  height: 80, // Sesuaikan tinggi animasi
                  width: 80, // Sesuaikan lebar animasi
                ),
                SizedBox(height: 4), // Jarak antara gambar dan nilai
                Text(
                  '600 PPM',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black, // Mengubah warna teks menjadi hitam
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}