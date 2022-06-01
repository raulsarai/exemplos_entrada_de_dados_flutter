import 'package:flutter/material.dart';
import 'CampoTexto.dart';
import 'EntradaCheckbox.dart';
import 'EntradaRadioButton.dart';
import 'EntradaSlider.dart';
import 'EntradaSwitch.dart';

void main() {
  runApp(
    MaterialApp(
        // home: CampoTexto(),
        //home: EntradaCheckbox(),
        //home: EntradaRadioButton(),
        //home: EntradaSwitch(),
        //home: EntradaSlider(),
        home: Scaffold(
            appBar: AppBar(
              title: Text("Entrada de dados"),
            ),
            body: Container(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(32),
                child: Column(children: <Widget>[
                  CampoTexto(),
                  EntradaCheckbox(),
                  EntradaRadioButton(),
                  EntradaSwitch(),
                  EntradaSlider(),
                ]),
              ),
            ))),
  );
}
