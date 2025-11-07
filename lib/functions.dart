double calculateTax(double amount, String type) {
  if (amount < 0) {
    throw ArgumentError("Invalid amount");
  }

  if (type == "normal") return amount * 1.10;
  if (type == "business") return amount * 1.20;

  return double.parse(amount.toStringAsFixed(0));
}
