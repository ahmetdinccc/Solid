abstract class Visitor {
  void visitElementA(ElementA element);
  void visitElementB(ElementB element);
}

abstract class Element {
  void accept(Visitor visitor);
}

class ElementA extends Element {
  @override
  void accept(Visitor visitor) {
    visitor.visitElementA(this);
  }
}

class ElementB extends Element {
  @override
  void accept(Visitor visitor) {
    visitor.visitElementB(this);
  }
}

class ConcreteVisitor implements Visitor {
  @override
  void visitElementA(ElementA element) {
    print("Element A kontrol ediliiyor");
  }

  @override
  void visitElementB(ElementB element) {
    print("Element B kontrol ediliiyor");
  }
}


void main(List<String> args) {
  var elements =<Element>[ElementA(),ElementB()];
  var visitor=ConcreteVisitor();

  for(var element in elements){
    element.accept(visitor);
  }
}