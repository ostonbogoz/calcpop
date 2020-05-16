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

void impressaoAusente()
{
  print("calcpop: expressão ausente");
  print("Uso: calcpop [OPÇÃO] ... [EXPRESSÃO] ...");
  print("");
  print("Tente 'calcpop --help' para mais opções.");
}

void impressaoVersao()
{
  print("GNU CalcPoP 1.0.0 built on linux-gnu.");
  print("Locale:");
  print("\t/usr/share/locale");
  print("");
  print("Compile:");
  print("\tpub get");
  print("\tdart2native main.dart -o calcpop");
  print("");
  print("Copyright (C) 2015 Free Software Foundation, Inc.");
  print("License GPLv3+: GNU GPL version 3 or later");
  print("<http://www.gnu.org/licenses/gpl.html>.");
  print("This is free software: you are free to change and redistribute it.");
  print("There is NO WARRANTY, to the extent permitted by law.");
  print("");
  print("Originally written by Hrvoje Niksic <ostonprata@gmail.com>.");
  print("Please send bug reports and questions to <ostonprata@gmail.com>.");
}

void impressaoOpcaoFalha(String falha)
{
  String textoFalha = 
    "A opção (${falha}) ... falhou: opção desconhecida.\n" 
    + 
    "calcpop: não foi possível classificar a opção '${falha}'\n"
    +
    "Tente 'calcpop --help' para mais opções."
    ;
  
  print(textoFalha);
}

void impressaoArgumentosFalha(List argumentos)
{
  String texto = '';

  for (String elemento in argumentos) 
  {
    texto += elemento + ' ';
  }
  String textoFalha = 
    "A resolução de (${texto}) ... falhou: combinação de argumentos desconhecida.\n" 
    + 
    "calcpop: não foi possível resolver a combinação de argumentos '${texto}'\n"
    +
    "Tente 'calcpop --help' para mais informações."
    ;
  
  print(textoFalha);
}

void impressaoHelp()
{
  print("GNU CalcPoP 1.0, Uma calculadora de expressões matemáticas e extras não interativa.");
  print("Uso: calcpop [OPÇÃO] ... [EXPRESSÃO] ...");
  print("");
  print("Argumentos obrigatórios para opções longas também são obrigatórios para opções curtas.");
  print("");
  print("Comece:");
  print("-h, \t--help \t\t\timprime esta ajuda.");
  print("-v, \t--versao \t\texibe a versão do CalcPoP e sai.");
  print("");
  print("-e, \t--expressao \t\tcalcula expressões e sai.");
  print("\t\t\t\texemplos: 2+2 | (2+2)*10/2 | (2+2)*10/2+30 | (2+2)*10/2/(30-20)");
  print("");
  print("-p, \t--porcento \t\tcalcula na ordem descrita: porcento sobre um valor e sai.");
  print("\t\t\t\texemplos: 10 500 | 20 100 | 30 1500 | 50 250 | 10 1200");
  print("");
  print("-P, \t--percentual \t\tcalcula na ordem descrita: porcento sobre o valor de um outro porcento e sai.");
  print("\t\t\t\texemplos: 3 10 | 5 20 | 2 30  | 1 50 | 0.05 10 ");
  print("");
  print("-d, \t--diferenca-porcento \tcalcula na ordem descrita: diferença em valor sobre um outro valor e sai.");
  print("\t\t\t\texemplos: 250 500 | 80 100 | 1460 1500 | 200 250 | 10 1200");
  print("");
  print("-i, \t--imc \t\t\tcalcula na ordem descrita: peso sobre altura e sai.");
  print("\t\t\t\texemplos: 170 1.77 | 80 1.77 | 50 1.80 | 200 1.90");
  print("");
  print("-j, \t--juros-composto \tcalcula na ordem descrita: porcento sobre um valor sobre a quantidade de vezes e sai.");
  print("\t\t\t\texemplos: 10 500 6 | 20 100 3 |  30 1500 2 | 50 250 12 | 10 1200 24");
  print("");
  print("Envie relatórios e sugestões de erros para <ostonprata@gmail.com>");
}