import 'package:brasil_fields/brasil_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttercomponentsapp/widgets/nav_drawer/nav_drawer.dart';

class MascaraValidacaoView extends StatefulWidget {

  static const String routeName = '/mascara_validacao';

  @override
  _MascaraValidacaoState createState() => _MascaraValidacaoState();
}

class _MascaraValidacaoState extends State<MascaraValidacaoView> {


  TextEditingController _alturaController = TextEditingController();
  TextEditingController _cartaoBancarioController = TextEditingController();
  TextEditingController _cepController = TextEditingController();
  TextEditingController _cpfController = TextEditingController();
  TextEditingController _cnpjController = TextEditingController();
  TextEditingController _cpfOuCnpjController = TextEditingController();
  TextEditingController _dataController = TextEditingController();
  TextEditingController _horaController = TextEditingController();
  TextEditingController _kmController = TextEditingController();
  TextEditingController _pesoController = TextEditingController();
  TextEditingController _placaController = TextEditingController();
  TextEditingController _realController = TextEditingController();
  TextEditingController _telefoneController = TextEditingController();
  String _valorRecuperado = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          title: Text("Máscaras & Validações"),
        ),
        drawer: NavDrawer(),
        body: Container(
          padding: EdgeInsets.all(16),
          child: Center(
            child: SingleChildScrollView(
              child:  Column(
                children: <Widget>[
                  TextField(
                    controller: _alturaController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      AlturaInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "Altura"),
                  ),
                  TextField(
                    controller: _cartaoBancarioController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CartaoBancarioInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "Cartão Crédito"),
                  ),
                  TextField(
                    controller: _cepController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CepInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "CEP"),
                  ),
                  TextField(
                    controller: _cpfController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "CPF"),
                  ),
                  TextField(
                    controller: _cnpjController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CnpjInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "CNPJ"),
                  ),
                  TextField(
                    controller: _cpfOuCnpjController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      CpfOuCnpjFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "CPf ou CNPJ"),
                  ),
                  TextField(
                    controller: _dataController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      DataInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "Data"),
                  ),
                  TextField(
                    controller: _horaController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      HoraInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "Hora"),
                  ),
                  TextField(
                    controller: _kmController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      KmInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "KM"),
                  ),
                  TextField(
                    controller: _pesoController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      PesoInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "Peso"),
                  ),
                  TextField(
                    controller: _realController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      RealInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "Real"),
                  ),
                  TextField(
                    controller: _telefoneController,
                    keyboardType: TextInputType.number,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      TelefoneInputFormatter(),
                    ],
                    decoration: InputDecoration(hintText: "Telefone"),
                  ),
                  ElevatedButton(
                    child: Text(
                      "Recuperar Valor",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                    ),
                    onPressed: () {
                      setState(() {
                        _valorRecuperado = _cpfController.text.toString();
                      });
                    },
                  ),
                  Text(
                    "Valor: ${_valorRecuperado}",
                    style: TextStyle(fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
