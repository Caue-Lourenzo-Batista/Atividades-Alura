class Account {
  String name;
  double balance;
  bool isAuthenticated;

  Account(
      {required this.name,
      required this.balance,
      required this.isAuthenticated}):

      //Criando asserts para fazer verificações rápidas na entrada de valores
        assert(name.isNotEmpty),
        assert(balance.isNegative != true),
        assert(isAuthenticated != false);

  editBalance({required value}) {
    balance = balance + value;
  }
}
