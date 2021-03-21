import 'package:dartchain/transaction.dart' show Transaction;

void main(List<String> arguments) {
  var my_tx = Transaction('toto', 'tata', 15);
  print(my_tx);
}
