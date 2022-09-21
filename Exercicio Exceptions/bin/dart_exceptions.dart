import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: false));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  //Tratando as exceptions na validação da transferência
  try {
    // Fazendo transferência
    bool result = bankController.makeTransfer(
        idSender: "Kako", idReceiver: "Ricarth", amount: 500);

    // Observando resultado
    if(result) {
    print('Tranferência aprovada com sucesso!');
    }
  }on SenderIdIsValid catch (e){

    print(e);
    print('O ID do remetente é inválido');

  }on ReceiverIdISValid catch (e){

    print(e);
    print('O ID ${e.idReceiver} do destinatário é inválido');

  }on SenderIsAuthenticated catch (e){

    print(e);
    print('A autenticação do remetente ${e.idSender} é inválida');

  }on ReceiverIsAuthenticated catch (e){

    print(e);
    print('A autenticação do destinatário ${e.idReceiver} é inválida');

  }on SenderBalanceIsValid catch (e){

    print(e);
    print('O saldo do remetente ${e.idSender} é insuficiente  para a transferência, seu saldo atual é: ${e.balance}');
  }
}
