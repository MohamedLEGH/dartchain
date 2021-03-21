class Transaction {
  String sender;
  String receiver;
  double amount;
  int timestamp;
  int tx_number;
  int signature;

  Transaction(this.sender, this.receiver, this.amount,
      {timestamp, tx_number, signature}) {
    this.timestamp = timestamp;
    this.tx_number = tx_number;
    this.signature = signature;
  }

  @override
  String toString() {
    var string = 'Sender: $sender'
        '\n'
        'Receiver: $receiver'
        '\n'
        'Amount: $amount'
        '\n'
        'Timestamp: $timestamp'
        '\n'
        'Tx Number: $tx_number'
        '\n'
        'Signature: $signature';
    return string;
  }

  void addTimestamp(timedata) {
    timestamp = timedata;
  }
}
