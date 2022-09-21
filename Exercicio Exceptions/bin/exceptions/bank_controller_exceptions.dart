class SenderIdIsValid implements Exception{
  String report = 'SenderIDIsValid';
  String idSender;
  SenderIdIsValid ({required this.idSender});

  //Sbreescrevendo o método toString

  @override
  String toString(){
  return('$report\n Id sender: $idSender');
  }
}

class ReceiverIdISValid implements Exception{
  String report = 'ReciverIdIsValid';
  String idReceiver;
  ReceiverIdISValid({required this.idReceiver});

  @override
  String toString(){
    return('$report\n Id sender: $idReceiver');
  }
}

class SenderIsAuthenticated implements Exception{
  String report = 'SenderIsAutheticated';
  String idSender;
  SenderIsAuthenticated({required this.idSender});

  @override
  String toString(){
    return('$report\n Id sender: $idSender');
  }
}

class ReceiverIsAuthenticated implements Exception{
  String report = 'ReceiverIsAutheticated';
  String idReceiver;
  ReceiverIsAuthenticated({required this.idReceiver});

  @override
  String toString(){
    return('$report\n Id sender: $idReceiver');
  }
}

class SenderBalanceIsValid implements Exception{
  String report = 'SenderBalanceIsValid';
  String idSender;
  double balance;
  SenderBalanceIsValid({required this.idSender, required this.balance});

  @override
  String toString(){
    return('$report\n Id sender: $idSender\n Balance: $balance');
  }
}