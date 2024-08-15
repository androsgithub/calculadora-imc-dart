import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:calculadora_imc/classes/pessoa.dart';

double calcularImc(Pessoa pessoa) {
  String imcString =
      (pessoa.getPeso() / pow(pessoa.getAltura(), 2)).toStringAsFixed(2);
  double imc = double.parse(imcString);
  return imc;
}

String lerTerminal(String mensagem) {
  print(mensagem);
  String textOut = "";
  try {
    textOut = stdin.readLineSync(encoding: utf8).toString();
  } catch (e) {
    print("Valor invalido");
    textOut = lerTerminal(mensagem);
  }
  return textOut;
}

double lerTerminalDouble(String mensagem) {
  double doubleOut = 0.0;
  try {
    doubleOut = double.parse(lerTerminal(mensagem));
  } catch (e) {
    print("Valor invalido");
    doubleOut = lerTerminalDouble(mensagem);
  }
  return doubleOut;
}
