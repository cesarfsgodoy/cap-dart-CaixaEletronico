import 'CaixaEletronico.dart';
import 'dart:io';

main() {
  CaixaEletronico cx = new CaixaEletronico();
  double valor;
  int op;
  print("digite a opcao desejada");
  print("1 - Ver saldo");
  print("2 - Saque");
  print("3 - Deposito");
  print("0 - Sair");

  op = int.parse(stdin.readLineSync()!);
  

  while (op != 0) {
    switch (op) {
      case 1:
        print("-----Seu Saldo é de ${cx.saldo}-----");
        break;
      case 2:
        print("-----informe o valor que deseja sacar-----");
        valor = double.parse(stdin.readLineSync()!);
        if (cx.saque(valor)) {
          print("-----Voce sacou $valor reais-----");
        } else {
          print("-----Saldo insuficiente-----");
        }
        break;
      case 3:
        print("informe o valor que deseja depositar");
        valor = double.parse(stdin.readLineSync()!);
        cx.depositar(valor);
        print("------Voce depositou $valor reais-----");
        break;
      default:
        print("-----Opcao invalida-----");
    }
    print("digite a opcao desejada");
    print("1 - Ver saldo");
    print("2 - Saque");
    print("3 - Deposito");
    print("0 - Sair");

    op = int.parse(stdin.readLineSync()!);
  }
}
