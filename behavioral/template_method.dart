abstract class PaymentProcess {
  void processPayment() {
    authenticate();
    validatePayment();
    performPayment();
    sendConfirmation();
  }
}

void authenticate() {
  print("Kimlik Doğrulaması");
}

void validatePayment() {
  print("ödeme doğrulamsı");
}

void performPayment() {}

void sendConfirmation() {
  print("ödeme onayı gönderiliyor");
}

class CreditCardPayment extends PaymentProcess {
  @override
  void performPayment() {}
}

class PayPalPayment extends PaymentProcess {
  @override
  void performPayment() {}
}

void main(List<String> args) {
  print("Kredi Kartı Ödeme:");

  var creditCardPayment = CreditCardPayment();

  creditCardPayment.processPayment();
  print('\nPayPal Ödeme:');
  var payPalPayment = PayPalPayment();
  payPalPayment.processPayment();
}
