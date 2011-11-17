class perrinFormula implements formula {
// P(n) = P(n-2)+P(n-3);
// P(0) = 3, P(1) = 0, P(2) = 2
  perrinFormula(this.name);
  calculate() {
    value = _perrin(parameters);
  }
  final name;
  int value;
  int parameters;
  _perrin(x) {
    if (x == 0) {
      return 3;
    } else if (x == 1) {
      return 0;
    } else if (x == 2) {
      return 2;
    } else {
      return _perrin(x-2) + _perrin(x-3);
    }
  }
}
