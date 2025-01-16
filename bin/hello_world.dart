import 'package:hello_world/hello_world.dart';

void main(List<String> arguments) {
  final int argsSize = arguments.length;

  if (argsSize == 4) error();

  double x = double.parse(arguments.first);
  String operator = arguments[1];
  double y = double.parse(arguments.last);

  Calc calc = Calc(x: x, y: y);
  double value;

  switch (operator) {
    case '+':
      value = calc.sum();
      break;

    case '-':
      value = calc.sub();
      break;

    case '/':
      value = calc.div();
      break;

    case '*':
      value = calc.mul();
      break;

    default:
      return error();
  }

  var rx = doubleInt(x);
  var ry = doubleInt(y);

  var rv = doubleInt(value);

  print('$rx $operator $ry = $rv');
}

void error() {
  List<String> operators = ['+', '-', '/', '*'];
  List<double> numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

  operators.shuffle();
  numbers.shuffle();

  int x = numbers.first.toInt();
  String operator = operators.first;
  int y = numbers.last.toInt();

  throw ArgumentError('Try: \$ dart run bin/hello_world.dart $x $operator $y');
}

dynamic doubleInt(double number) {
  return (number % 1 == 0) ? number.toInt() : number;
}
