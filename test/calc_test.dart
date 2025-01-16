import 'package:dart_calc/calc.dart';
import 'package:test/test.dart';

void main() {
  var calc = Calc(3, 2);

  test('sum', () {
    expect(calc.sum(), 5);
  });

  test('sub', () {
    expect(calc.sub(), 1);
  });

  test('div', () {
    expect(calc.div(), 1.5);
  });

  test('mul', () {
    expect(calc.mul(), 6);
  });
}
