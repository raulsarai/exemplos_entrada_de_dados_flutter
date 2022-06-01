import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CampoTexto extends StatefulWidget {
  @override
  _CampoTextoState createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(32),
          child: TextField(
            //text, number, emailAddress, datetime
            keyboardType: TextInputType.number,
            decoration: InputDecoration(labelText: "Digite um valor"),
            //enabled: false,
            //maxLength: 2,
            //maxLengthEnforced: false,
            style: TextStyle(fontSize: 36, color: Colors.green),
            //obscureText: true,
            /*
              onChanged: (String texto){
                print("valor digitado:" +  texto);
              },*/
            onSubmitted: (String texto) {
              print("valor digitado:" + texto);
            },
            controller: _textEditingController,
          ),
        ),
        RaisedButton(
          child: Text("Testar Campo Texto"),
          color: Colors.lightGreen,
          onPressed: () {
            print("valor digitado:" + _textEditingController.text);
          },
        )
      ],
    );
  }
}
