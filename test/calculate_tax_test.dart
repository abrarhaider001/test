import 'package:flutter_test/flutter_test.dart';
import 'package:test/functions.dart';

void main() {
  group("calculateTax", () {
    test("20% tax for business user", () {
      expect(calculateTax(100, "business"), 120);
    });

    test("0% tax for student", () {
      expect(calculateTax(100, "student"), 100);
    });

    test("throws error for negative amount", () {
      expect(() => calculateTax(-10, "normal"), throwsArgumentError);
    });
  });
}
