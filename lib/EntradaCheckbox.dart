import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = true;
  bool _comidaMexicana = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        CheckboxListTile(
            title: Text("Comida Brasileira"),
            subtitle: Text("A melhor comida do mundo!!"),
            //activeColor: Colors.red,
            //selected: true,
            //secondary: Icon(Icons.add_box),
            value: _comidaBrasileira,
            onChanged: (bool? valor) {
              setState(() {
                _comidaBrasileira = valor!;
              });
            }),
        CheckboxListTile(
            title: Text("Comida Mexicana"),
            subtitle: Text("A melhor comida do mundo!!"),
            //activeColor: Colors.red,
            //selected: true,
            //secondary: Icon(Icons.add_box),
            value: _comidaMexicana,
            onChanged: (bool? valor) {
              setState(() {
                _comidaMexicana = valor!;
              });
            }),
        RaisedButton(
            child: Text(
              "Testar CheckBox",
              style: TextStyle(fontSize: 20),
            ),
            color: Colors.lightGreen,
            onPressed: () {
              print("Comida Brasileira: " +
                  _comidaBrasileira.toString() +
                  " Comida Mexicana " +
                  _comidaMexicana.toString());
            })

        /*
            Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool valor){
                setState(() {
                  _estaSelecionado = valor;
                });
                print("Checkbox: " + valor.toString() );
              },
            )*/
      ],
    );
  }
}
