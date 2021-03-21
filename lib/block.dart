import 'package:dartchain/transaction.dart' show Transaction;

class Block {
  int index;
  int previous_hash;
  int nonce;
  int timestamp;
  List transactions;
  int hashval;
  String miner;
  int signature;
  int mining_price;

  Block(this.index, this.previous_hash,
      {nonce = 0,
      timestamp = 0,
      transactions = const [],
      hashval,
      miner,
      signature}) {
    this.nonce = nonce;
    this.timestamp = timestamp;
    for (var elem in transactions) {
      var new_tx = Transaction(elem.sender, elem.receiver, elem.amount,
          timestamp: elem.timestamp,
          tx_number: elem.tx_number,
          signature: elem.signature);
      this.transactions.add(new_tx);
    }
    this.hashval = hashval;
    this.miner = miner;
    this.signature = signature;
    mining_price = 50;
  }

  @override
  String toString() {
    var string = 'Index: $index'
        '\n'
        'Previous Hash: $previous_hash'
        '\n'
        'Nonce: $nonce';
    return string;
  }

  void addTimestamp(timedata) {
    timestamp = timedata;
  }
}
