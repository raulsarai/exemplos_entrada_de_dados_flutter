import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaRadioButton extends StatefulWidget {
  @override
  _EntradaRadioButtonState createState() => _EntradaRadioButtonState();
}

class _EntradaRadioButtonState extends State<EntradaRadioButton> {
  int? _escolhaUsuario;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        RadioListTile(
            title: Text("Masculino"),
            value: 1,
            groupValue: _escolhaUsuario,
            onChanged: (int? escolha) {
              setState(() {
                _escolhaUsuario = escolha;
              });
            }),
        RadioListTile(
            title: Text("Feminino"),
            value: 2,
            groupValue: _escolhaUsuario,
            onChanged: (int? escolha) {
              setState(() {
                _escolhaUsuario = escolha;
              });
            }),
        RaisedButton(
            child: Text(
              "Testar RadioButton",
              style: TextStyle(fontSize: 20),
            ),
            color: Colors.lightGreen,
            onPressed: () {
              print("Resultado: " + _escolhaUsuario.toString());
            })

        /*
            Text("Masculino"),
            Radio(
                value: "m",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha);
                }
            ),
            Text("Feminino"),
            Radio(
                value: "f",
                groupValue: _escolhaUsuario,
                onChanged: (String escolha){
                  setState(() {
                    _escolhaUsuario = escolha;
                  });
                  print("resultado: " + escolha);
                }
            ),
            */
      ],
    );
  }
}
