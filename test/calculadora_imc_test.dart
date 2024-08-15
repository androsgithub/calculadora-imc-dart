import 'package:calculadora_imc/calculadora_imc.dart';
import 'package:calculadora_imc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular imc', () {
    Pessoa pessoa = Pessoa("Jonas", 55, 1.75);
    expect(calcularImc(pessoa), equals(17.96));
  });
}
