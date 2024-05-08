import 'package:flutter/material.dart';
import 'package:login_ui/Utils/colors.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: -30,
            top: -29,
            child: Container(
              width: 120,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            left: -52,
            top: -32,
            child: Container(
              width: 120,
              height: 140,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
                border: Border.all(color: Colors.white, width: 10),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 430,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35),
                  ),
                  image: DecorationImage(
                    scale: 3,
                    image: AssetImage("images/polinema.png"),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 350,
            left: MediaQuery.of(context).size.width / 2 - 170,
            child: Text(
              "Sign In",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 350,
            left: MediaQuery.of(context).size.width / 2 - 175,
            child: Container(
              width: 350,
              height: 50,
              margin: EdgeInsets.only(top: 50),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Username',
                ),
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: MediaQuery.of(context).size.width / 2 - 175,
            child: Container(
              width: 350,
              height: 50,
              margin: EdgeInsets.only(top: 50),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: MediaQuery.of(context).size.width / 1 - 138,
            child: Text(
              "Lupa Password",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                decorationThickness: 1.5,
              ),
            ),
          ),
          Positioned(
            top: 700,
            left: MediaQuery.of(context).size.width / 2 - 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(150, 50),
              ),
              child: Text(
                'Login',
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
