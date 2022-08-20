int sumFromOneTo(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

int betterSumFromOneTo(int n) {
  return n * (n + 1) ~/ 2;
}

void countTime({required int times}) {
  final start = DateTime.now();
  final sum = sumFromOneTo(times);
  final end = DateTime.now();
  final time = end.difference(start);

  print(sum);
  print(time);
}

void countTimeBest({required int times}) {
  final start = DateTime.now();
  final sum = betterSumFromOneTo(times);
  final end = DateTime.now();
  final time = end.difference(start);

  print(sum);
  print(time);
}
