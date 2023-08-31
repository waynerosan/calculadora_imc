import 'dart:convert';
import 'dart:io';
import 'package:calculadora_imc/pessoa.dart';
//import 'package:test/test.dart';

String leitura(String mensagem) {
  print(mensagem);
  return stdin.readLineSync(encoding: utf8) ?? "";
}

void main(List<String> arguments) {
  Pessoa p = Pessoa();
  String entrada = "";
  do {
    try {
      entrada = leitura("Digite seu nome");
      if (entrada.isNotEmpty) {
        p.setNome(entrada);
      } else {
        throw Exception("Informação inválida. Tente novamente");
      }
    } catch (e) {
      print(e);
    }
  } while (p.getNome().isEmpty);

  do {
    try {
      entrada = leitura("Digite sua altura");
      if (entrada.isNotEmpty) {
        if (double.parse(entrada) <= 0) {
          throw Exception("Digite uma altura maior que 0");
        } else {
          p.setAltura(double.parse(entrada));
        }
      } else {
        throw Exception("A altura precisa ser informada");
      }
    } catch (e) {
      print(e);
    }
  } while (p.getAltura() == 0);

  do {
    try {
      entrada = leitura("Digite seu peso");
      if (entrada.isNotEmpty) {
        if (double.parse(entrada) <= 0) {
          throw Exception("Digite um peso maior que 0");
        } else {
          p.setPeso(double.parse(entrada));
        }
      } else {
        throw Exception("O peso precisa ser informado");
      }
    } catch (e) {
      print(e);
    }
  } while (p.getPeso() == 0);

  print("Olá ${p.getNome()}");
  print("Você tem ${p.getAltura()}m de altura e pesa ${p.getPeso()}kg.");
  print("Isso significa que seu IMC é ${p.getIMC()}");
  print("Portanto, sua classificação é: ${p.getClassificacao()}");
}
