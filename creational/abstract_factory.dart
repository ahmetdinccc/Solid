abstract class AbstractFactory {
  AbstractProductA createProductA();
  AbstractProductB createProductB();
}

abstract class AbstractProductA {
  void a() {}
}

abstract class AbstractProductB {
  void b() {}
}

class a1 implements AbstractProductA {
  @override
  void a() {
    print("A1 işlemi gerçekleşiyor");
  }
}

class b1 implements AbstractProductB {
  @override
  void b() {
    print("B1 işlemi gerçekleşiyor");
  }
}

class a2 implements AbstractProductA {
  @override
  void a() {
    print("A2 işlemi gerçekleşiyor");
  }
}

class b2 implements AbstractProductB {
  @override
  void b() {
    print("B2 işlemi gerçekleşiyor");
  }
}

class Factory1 implements AbstractFactory {
  @override
  AbstractProductA createProductA() {
    return a1();
  }

  @override
  AbstractProductB createProductB() {
    return b1();
  }
}

class Factory2 implements AbstractFactory {
  @override
  AbstractProductA createProductA() {
    return a2();
  }

  @override
  AbstractProductB createProductB() {
    return b2();
  }
}

void main(List<String> args) {
  //FACTORY 1 ÇALIŞIYOR

  AbstractFactory factory1 = Factory1();
  AbstractProductA productA1 = factory1.createProductA();
  AbstractProductB productB1 = factory1.createProductB();

  productA1.a();
  productB1.b();

  print("----------------------------------------");
  print("----------------------------------------");


//FACTORY 2 ÇALIŞIYOR
  AbstractFactory factory2 = Factory2();
  AbstractProductA productA2 = factory2.createProductA();
  AbstractProductB productB2 = factory2.createProductB();

  productA2.a();
  productB2.b();
}
