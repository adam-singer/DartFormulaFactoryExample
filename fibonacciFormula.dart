class fibonacciFormula implements formula {
// P(n) = P(n-1) + P(n-2)
// P(0) = 0, P(1) = 1
  fibonacciFormula(this.name);
  calculate() {
    value = _fib(parameters);
  }
  final name;
  int value;
  int parameters;
  
  _fib(x) {
    if (x<=1) {
      return x;
    }
    else {
      return _fib(x-1) + _fib(x-2);
    }    
  }
}
