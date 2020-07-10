import 'package:demo_train/screens/splash/widgets/transport-animation.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD300),
      body: Column(
        children: [
          Flexible(
            child: TransportAnimation(
              type: TransportAnimationType.bus,
              fit: BoxFit.contain,
            ),
            flex: 1,
          ),
          Flexible(
            child: Column(
              children: [
                Text(
                  "Transporte de Lima",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Encuentra tu transporte favorito",
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  padding: EdgeInsets.all(20),
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  onPressed: () {
                    Navigator.pushNamed(context, 'home');
                  },
                  child: Text(
                    "Ingresar al sistema",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  color: Colors.orange,
                )
              ],
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}
