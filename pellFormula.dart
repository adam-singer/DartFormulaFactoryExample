class pellFormula implements formula {
// P(n) = 2P(n-1) + P(n-2)
// P(0) = 0, P(1) = 1
  pellFormula(this.name);
  calculate() {
    value = _pell(parameters);
  }
  final name;
  int value;
  int parameters;
  _pell(x) {
    if (x<=1) {
      return x;
    } else {
      return 2*_pell(x-1) + _pell(x-2);
    }
  }
}
