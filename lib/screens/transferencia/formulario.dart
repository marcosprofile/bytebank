import 'package:bytebank/components/editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Nova transferência';

const _rotuloCampoNumeroConta = 'Número da conta';
const _dicaCampoNumeroConta = '0000';

const _rotuloCampoValor = 'Valor da transferência';
const _dicaCampoValor = '0.00';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta = TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          _tituloAppBar,
          style: TextStyle(fontSize: 22.0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoNumeroConta,
              icone: Icons.account_balance,
              dica: _dicaCampoNumeroConta,
              rotulo: _rotuloCampoNumeroConta,
            ),
            Editor(
              controlador: _controladorCampoValor,
              icone: Icons.monetization_on,
              dica: _dicaCampoValor,
              rotulo: _rotuloCampoValor,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: ElevatedButton(
                child: const Text(_textoBotaoConfirmar),
                onPressed: () => _novaTransferencia(context),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _novaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);

    if (numeroConta != null && valor != null) {
      final transferenciaRealizada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaRealizada);
    }
  }
}