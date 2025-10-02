import 'package:flutter/material.dart';
import 'dart:async'; // Import untuk Timer/Future.delayed
import 'package:myapp/screens/dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  // Nama rute untuk navigasi
  static const String route = '/splash';
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Panggil fungsi untuk navigasi setelah beberapa detik
    _navigateToDashboard();
  }

  // Fungsi untuk pindah ke Dashboard setelah delay
  void _navigateToDashboard() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, DashboardScreen.route);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F8FB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. Logo aplikasi (widget khusus)
            const JustduitLogo(),
            const SizedBox(height: 24),

            // 2. Indikator loading
            const CircularProgressIndicator(
              color: Color(0xFF1E88FF),
            ),
            const SizedBox(height: 16),

            // 3. Teks "Loading..."
            Text(
              'Sabar Yeee',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Widget kecil untuk logo aplikasi
class JustduitLogo extends StatelessWidget {
  const JustduitLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo-mola.png', // pastikan file ada di folder assets
      height: 100,
      fit: BoxFit.contain,
    );
  }
}
