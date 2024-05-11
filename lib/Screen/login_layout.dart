import 'package:flutter/material.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  _MySplashScreenState createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  bool _isPasswordVisible = false;
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
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  stops: [0.0, 0.5, 1.0],
                  colors: [
                    Color(0xFF2C2373),
                    Color(0xFF2C2373),
                    Colors.yellow,
                  ],
                ),
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
                color: Color(0xFF2C2373),
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
            top: 345,
            left: MediaQuery.of(context).size.width / 2 - 175,
            child: Container(
              width: 350,
              height: 53,
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
              height: 53,
              margin: EdgeInsets.only(top: 50),
              child: Stack(
                children: [
                  TextField(
                    obscureText: !_isPasswordVisible,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  Positioned(
                    right: 5,
                    top: 5,
                    child: IconButton(
                      icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 530,
            left: MediaQuery.of(context).size.width / 1 - 132,
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
            top: 680,
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
