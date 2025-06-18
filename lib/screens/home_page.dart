import 'package:flutter/material.dart';
import 'package:test_grad/screens/signin_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
                'assets/images/WhatsApp Image 2023-10-27 at 5.15.41 PM.jpeg'),
            SizedBox(height: 15),
            Text(
              'Hear My Signs',
              style: TextStyle(
                  color: Color(0xFF649192),
                  fontFamily: 'Pacifico',
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) {
                      return Sign_In();
                    }),
                  ),
                );
              },
              child: Text(
                'Start',
                style: TextStyle(
                    color: Colors.white, fontFamily: 'Pacifico', fontSize: 30),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF649192))//primary: Color(0xFF649192)),
            ),
          ],
        ),
      ),
    );
  }
}
