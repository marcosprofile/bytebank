import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  final TextEditingController? controlador;
  final String? rotulo;
  final String? dica;
  final IconData? icone;

  Editor({
    this.controlador,
    this.icone,
    this.rotulo,
    this.dica,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(
        16.0,
        8.0,
        16.0,
        8.0,
      ),
      child: TextField(
        controller: controlador,
        style: const TextStyle(fontSize: 24.0),
        decoration: InputDecoration(
          prefixIcon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
          filled: true,
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}