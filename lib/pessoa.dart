import 'dart:math';

class Pessoa {
  String _nome = "";
  double _altura = 0;
  double _peso = 0;

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  void setAltura(double altura) {
    _altura = altura;
  }

  double getAltura() {
    return _altura;
  }

  void setPeso(double peso) {
    _peso = peso;
  }

  double getPeso() {
    return _peso;
  }

  double getIMC() {
    double imc = getPeso() / pow(getAltura(), 2);
    return imc;
  }

  String getClassificacao() {
    if (getIMC() < 16) {
      return "Magreza grave";
    } else if (getIMC() < 17) {
      return "Magreza moderada";
    } else if (getIMC() < 18.5) {
      return "Magreza leve";
    } else if (getIMC() < 25) {
      return "Saudavel";
    } else if (getIMC() < 30) {
      return "Sobrepeso";
    } else if (getIMC() < 35) {
      return "Obesidade Grau I";
    } else if (getIMC() < 40) {
      return "Obesidade Grau II (Severa)";
    } else {
      return "Obesidade Grau III (Mórbida)";
    }
  }
}
