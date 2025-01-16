import 'package:hello_world/hello_world.dart';
import 'package:test/test.dart';

void main() {
  test('sum', () {
    expect(Calc(x: 3, y: 2).sum(), 5);
  });

  test('sub', () {
    expect(Calc(x: 3, y: 2).sub(), 1);
  });

  test('div', () {
    expect(Calc(x: 3, y: 2).div(), 1.5);
  });

  test('mul', () {
    expect(Calc(x: 3, y: 2).mul(), 6);
  });
}
