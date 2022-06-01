import 'package:flutter/material.dart';

class EntradaSwitch extends StatefulWidget {
  @override
  _EntradaSwitchState createState() => _EntradaSwitchState();
}

class _EntradaSwitchState extends State<EntradaSwitch> {
  bool _escolhaUsuario = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SwitchListTile(
                title: Text("Receber notificações?"),
                value: _escolhaUsuario,
                onChanged: (bool valor) {
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }),
            RaisedButton(
                child: Text(
                  "Testar Switch",
                  style: TextStyle(fontSize: 20),
                ),
                color: Colors.lightGreen,
                onPressed: () {
                  if (_escolhaUsuario) {
                    print("escolha: ativar notificações");
                  } else {
                    print("escolha: NÃO ativar notificações");
                  }

                  //print("Resultado: " + _escolhaUsuario.toString() );
                })

            /*
            Switch(
                value: _escolhaUsuario,
                onChanged: (bool valor){
                  setState(() {
                    _escolhaUsuario = valor;
                  });
                }
            ),
            Text("Receber notificações?")
            */
          ],
        );
  }
}
