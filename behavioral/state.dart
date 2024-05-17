abstract class State {
  void handle(Context context);
}

class ConcreteStateA implements State {
  @override
  void handle(Context context) {
    print("ConcreteStateA talebi ele alıyor");
    context.state = ConcreteStateA();
  }
}

class ConcreteStateB implements State {
  @override
  void handle(Context context) {
    print("ConcreteStateB talebi ele alıyor");
    context.state = ConcreteStateB();
  }
}

class Context {
  State _state;
  Context(this._state);

  State get state => _state;

  set state(State state) {
    _state = state;
  }

  void request() {
    _state.handle(this);
  }
}

void main(List<String> args) {
  Context context1 = Context(ConcreteStateA());
  Context context2 = Context(ConcreteStateB());
  context1.request();
  context2.request();
}
