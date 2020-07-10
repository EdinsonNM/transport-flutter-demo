import 'package:demo_train/screens/splash/widgets/transport-animation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TransportAnimationType type;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFD300),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFFFFD300),
        title: Text("Transporte de Lima"),
        actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
      ),
      body: Column(
        children: [
          Flexible(
            child: TransportAnimation(
              type: type,
              fit: BoxFit.contain,
            ),
            flex: 2,
          ),
          Flexible(
            child: Container(
              padding: EdgeInsets.only(right: 40, left: 40),
              child: Column(
                children: [
                  DropdownButton(
                      value: type,
                      hint: Text("Seleccione su tipo de transporte"),
                      items: [
                        DropdownMenuItem(
                          child: Text("Tren"),
                          value: TransportAnimationType.train,
                        ),
                        DropdownMenuItem(
                            child: Text("Bus"),
                            value: TransportAnimationType.bus)
                      ],
                      onChanged: (value) {
                        setState(() {
                          type = value;
                        });
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Ingresa tu origen"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Ingresa tu destino"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  RaisedButton(
                    padding: EdgeInsets.all(20),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    onPressed: () {},
                    child: Text(
                      "Buscar transporte",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    color: Colors.orange,
                  ),
                ],
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }
}
