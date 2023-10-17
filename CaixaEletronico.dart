class CaixaEletronico {
  double _saldo = 0;

  double get saldo {
    return _saldo;
  }

  void depositar(double valor){
    _saldo += valor;
  }
  
  bool saque(double valor){
    if (valor >=_saldo) {
      _saldo -= valor;
      return true;
    }
    return false;
  }
}