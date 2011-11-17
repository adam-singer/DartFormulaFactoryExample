class formulaFactory {
  factory formula(name) {
    if (name == "fibonacci") {
      return new fibonacciFormula("fibonacci");
    } else if (name == "perrin") {
      return new perrinFormula("perrin");
    } else if (name == "pell") {
      return new pellFormula("pell");
    } else {
      return new formulaNotFound();
    }
  }
}
