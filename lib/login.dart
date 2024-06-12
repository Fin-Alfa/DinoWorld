import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('../assets/images/food_background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // KOMENTAR-1: GAMBAR
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('../assets/images/profile.png'),
            ),

            // KOMENTAR-2: TEKS
            SizedBox(height: 20.0),
            Text(
              'RM Dinal',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Sign in untuk membuka kunci resep lezat',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white70,
              ),
            ),

            // KOMENTAR-3: TOMBOL
            SizedBox(height: 30.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: MaterialButton(
                onPressed: () {
                  // Handle login button press
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
                padding: EdgeInsets.symmetric(vertical: 15.0),
                minWidth: double.infinity,
                color: Colors.white,
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),

            // KOMENTAR-4: LOGO BRAND
            SizedBox(height: 20.0),
            Text(
              'Powered by DinoWorld',
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.white70,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
