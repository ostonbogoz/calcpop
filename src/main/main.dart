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

import '../lib/impressao.dart';
import '../lib/calcular.dart';

void main(List<String> argumentos) 
{
  Calcular calcula = Calcular();

  List opcoesMain = 
  [
    '-h' , '--help' , '-v' , '--versao' , '-e' , '--expressao' , '-p' , '--porcento' , '-P' , '--percentual' , 
    '-d' , '--diferenca-porcento' , '-i' , '--imc' , '-j' , '--juros-composto'
  ];

  if(argumentos.isEmpty)
  {
    impressaoAusente();
  }

  else if(opcoesMain.contains(argumentos[0]))
  {
    List opcoes = 
    [
      '-e' , '--expressao' , '-p' , '--porcento' , '-P' , '--percentual' , 
      '-d' , '--diferenca-porcento' , '-i' , '--imc' , '-j' , '--juros-composto'
    ];

    if(argumentos.length == 1)
    {
      if(argumentos[0] == '-h' || argumentos[0] == '--help')
      {
        impressaoHelp();
      }

      else if(argumentos[0] == '-v' || argumentos[0] == '--versao')
      {
        impressaoVersao();
      }

      else if(opcoes.contains(argumentos[0]))
      {
        List argumentosTemporario = [argumentos[0] , "null"];

        impressaoArgumentosFalha(argumentosTemporario);
      }

      else
      {
        impressaoOpcaoFalha(argumentos[0]);
      }
    }

    else if(argumentos.length == 2)
    {
      if(argumentos[0] == '-e' || argumentos[0] == '--expressao')
      {
          calcula.textoExpressao = argumentos[1];
          print("resultado: ${calcula.calculaExpressao()}");
      }

      else
      {
        List opcoes = 
        [
          '-h' , '--help' , '-v' , '--versao' , '-p' , '--porcento' , '-P' , '--percentual' , 
          '-d' , '--diferenca-porcento' , '-i' , '--imc' , '-j' , '--juros-composto'
        ];

        if(opcoes.contains(argumentos[0]))
        {
          impressaoArgumentosFalha(argumentos);
        }

        else
        {
          impressaoOpcaoFalha(argumentos[0]);
        }
      }
    }

    else if(argumentos.length == 3)
    {

      if(argumentos[0] == '-p' ||  argumentos[0] == '--porcento')
      {
        calcula.operando1 = double.parse(argumentos[1]);
        calcula.operando2 = double.parse(argumentos[2]);

        double resultado = calcula.porcento();
        double soma = calcula.operando2 + calcula.porcento();
        double diferenca = calcula.operando2 - calcula.porcento();

        print("resultado: $resultado | soma: $soma | diferença: $diferenca");
      }

      else if(argumentos[0] == '-P' ||  argumentos[0] == '--percentual')
      {
        calcula.operando1 = double.parse(argumentos[1]);
        calcula.operando2 = double.parse(argumentos[2]);

        double resultado = calcula.percentual();
        double soma = calcula.operando2 + calcula.percentual();
        double diferenca = calcula.operando2 - calcula.percentual();

        print("resultado: $resultado% | soma: $soma% | diferença: $diferenca%");
      }

      else if(argumentos[0] == '-d' ||  argumentos[0] == '--diferenca-porcento')
      {
        calcula.operando1 = double.parse(argumentos[1]);
        calcula.operando2 = double.parse(argumentos[2]);

        print("resultado: ${calcula.diferencaPorcentual()}%");
      }

      else if(argumentos[0] == '-i' || argumentos[0] == '--imc')
      {
        calcula.operando1 = double.parse(argumentos[1]);
        calcula.operando2 = double.parse(argumentos[2]);

        String resultadoPeso;

        if(calcula.imc() < 18.5)
        {
          resultadoPeso = "Abaixo Do Peso";
        }

        else if(calcula.imc() > 18.5 && calcula.imc() < 24.9)
        {
          resultadoPeso = "Peso Ideal";
        }

        else if(calcula.imc() > 25 && calcula.imc() < 29.9)
        {
          resultadoPeso = "SobrePeso";
        }

        else if(calcula.imc() > 30 && calcula.imc() < 34.9)
        {
          resultadoPeso = "Obesidade Grau 1";
        }

        else if(calcula.imc() > 35 && calcula.imc() < 39.9)
        {
          resultadoPeso = "Obesidade Grau 2";
        }

        else
        {
          resultadoPeso = "Obesidade Grau 3";
        }

        print("resultado: ${calcula.imc().toStringAsFixed(0)} (${resultadoPeso})");
      }

      else
      {
        List opcoes = 
        [
          '-h' , '--help' , '-v' , '--versao' , '-e' , '--expressao' , '-j' , '--juros-composto'
        ];

        if(opcoes.contains(argumentos[0]))
        {
          impressaoArgumentosFalha(argumentos);
        }

        else
        {
          impressaoOpcaoFalha(argumentos[0]);
        }
      }
    }

    else if(argumentos.length == 4)
    {
      if(argumentos[0] == '-j' || argumentos[0] == '--juros-composto')
      {
        calcula.operando1 = double.parse(argumentos[1]);
        calcula.operando2 = double.parse(argumentos[2]);
        calcula.operando3 = double.parse(argumentos[3]);

        double resultado = calcula.jurosCompostos();
        double diferenca = calcula.jurosCompostos() - calcula.operando2;
        double direrencaPorcentual = calcula.jurosCompostosPercentual();

        print("resultado: $resultado | diferença: $diferenca | diferença porcento: $direrencaPorcentual%");
      }

      else
      {
        List opcoes = 
        [
          '-h' , '--help' , '-v' , '--versao' , '-e' , '--expressao' , '-p' , '--porcento' , 
          '-P' , '--percentual' , '-d' , '--diferenca-porcento' , '-i' , '--imc'
        ];

        if(opcoes.contains(argumentos[0]))
        {
          impressaoArgumentosFalha(argumentos);
        }

        else
        {
          impressaoOpcaoFalha(argumentos[0]);
        }
      }
    }

    else
    {


      List opcoes = 
      [
        '-h' , '--help' , '-v' , '--versao' , '-e' , '--expressao' , '-p' , '--porcento' , '-P' , '--percentual' , 
        '-d' , '--diferenca-porcento' , '-i' , '--imc' , '-j' , '--juros-composto'
      ];

      if(opcoes.contains(argumentos[0]))
      {
          impressaoArgumentosFalha(argumentos);
      }

      else
      {
        impressaoOpcaoFalha(argumentos[0]);
      }
    }
  }

  else
  {
    impressaoOpcaoFalha(argumentos[0]);
  }
}