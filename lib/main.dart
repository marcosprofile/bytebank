import 'package:bytebank/screens/transferencia/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(BytebankApp());

class BytebankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xFF6750A4),
        appBarTheme: const AppBarTheme(
          color: Color(0xFFEADDFF),
          titleTextStyle: TextStyle(
            color: Color(0xFF6750A4),
          ),
        ),
      ),
      home: Scaffold(
        body: ListaTransferencia(),
      ),
    );
  }
}
