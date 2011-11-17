#library("FormulaFactoryExample");
#import('dart:dom');
#import('FormulaFactoryLib.dart');

class FormulaFactoryExample {

  FormulaFactoryExample() {
  }

  void run() {
    var fi = new formula("fibonacci");
    fi.parameters=5;
    fi.calculate();
    write("fibonacci = ${fi.name}");
    write("fibonacci.value = ${fi.value}");
    
    var pe = new formula("perrin");
    pe.parameters=10; 
    pe.calculate();
    write("perrin = ${pe.name}");
    write("perrin.value = ${pe.value}");
    
    var pel = new formula("pell");
    pel.parameters=10;
    pel.calculate();
    write("pell = ${pel.name}");
    write("pell.value = ${pel.value}");
    
    var notFound = new formula("doesnotexists");
    notFound.calculate();
    write("formulaNotFound = ${notFound.name}");
    write("formulaNotFound.value = ${notFound.value}"); 
  }

  void write(String message) {
    // the DOM library defines a global "window" variable
    HTMLDocument doc = window.document;
    HTMLParagraphElement p = doc.createElement('p');
    p.textContent = message;
    doc.body.appendChild(p);
  }
}

void main() {
  new FormulaFactoryExample().run();
}
