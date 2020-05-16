/*
  Oston Prata , Brasília 12 De Maio De 2020.

  CONTATO: 
  ostonprata@gmail.com

  CÓDIGOS FONTES:
  https://github.com/ostonprata

  REDES SOCIAIS:
  https://www.youtube.com/channel/UCHbB7TRl0WNytk9Xx1jxXOQ
  https://twitter.com/ostonprata
  https://www.instagram.com/ostonprata/

  EXECUÇÃO: dart: dart main.dart | linux: ./calcpop | windows: calcpop.exe
*/

import 'dart:math' as math;
import 'package:expressions/expressions.dart';

class Calcular
{
  Calcular
  ({
    this.textoExpressao , this.operando1 , this.operador1 , this.operando2 , this.operador2 , this.operando3
  });

  String textoExpressao;
  double operando1;
  String operador1;
  double operando2;
  String operador2;
  double operando3;
  double total;

  dynamic calculaExpressao()
  {
    var expressao = Expression.parse(textoExpressao);
    var contexto = {'x': 0};
    final evaluator = const ExpressionEvaluator();
    var resultado = evaluator.eval(expressao, contexto);

    return resultado;
  }

  double porcento() => operando2 * (operando1 / 100);

  double percentual() => (operando1 * operando2) / 100;

  double diferencaPorcentual() => (operando1 / operando2) * 100;

  double jurosCompostos()
  {
    double resultado;
    total = operando2;

    for(int contador = 0 ; contador < operando3 ; contador++)
    {
      resultado = total * (operando1 / 100);
      total = resultado + total;
    }

    return total;
  }

  double jurosCompostosPercentual() => (total / operando2) * 100;

  double imc() => operando1 / (operando2 * operando2);
}