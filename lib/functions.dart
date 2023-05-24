void main() {
  final result = addTheValues(2, 5);
  final result1 = addTheValues(2, 5, c: 30);
  print(result);
  print(result1);
}

int addTheValues(int a, int b, {int c = 10}) {
  return a + b + c;
}

// int addValue({int? a, int? b, int? c}) {
//   return a ?? 0 + b ?? 0 + c;
// }
//optional 