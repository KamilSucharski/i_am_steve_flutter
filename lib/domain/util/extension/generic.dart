extension Let<T> on T {
  R let<R>(R Function(T it) function) => function(this);
}

extension Also<T> on T {
  T also(Function(T it) function) {
    function(this);
    return this;
  }
}

extension Use<T> on T {
  void use(Function(T it) function) {
    function(this);
  }
}

extension Cast<T> on T {
  R? cast<R>() {
    if (this is R) {
      return this as R;
    } else {
      return null;
    }
  }
}

extension TakeIf<T> on T {
  T? takeIf(bool Function(T it) function) {
    if (function(this)) {
      return this;
    } else {
      return null;
    }
  }
}