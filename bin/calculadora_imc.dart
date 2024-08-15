import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/pessoa.dart';

void main(List<String> arguments) {
  String nome = lerTerminal("Sua nome:");
  double altura = lerTerminalDouble("Sua altura:");
  double peso = lerTerminalDouble("Seu peso:");
  Pessoa pessoa = Pessoa(nome, peso, altura);
  print(pessoa.toString());
  double imc = calcularImc(pessoa);
  print("Seu IMC: ${imc.toStringAsFixed(2)}");
}
