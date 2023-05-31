void main() {
  MacBook obj = new MacBook("mac os", "mac ", "123456");
  obj.show();
}

//Parent
class Laptop {
  String name;
  String modelNumber;
  Laptop(this.name, this.modelNumber) {
    print("Laptop");
  }

  void show() {
    print("456");
  }
}

//Child
class MacBook extends Laptop {
  String osType;
  MacBook(this.osType, String name, String modelNumber)
      : super(name, modelNumber) {
    print("MacBook ");
  }

@override
  void show() {
    super.show();
    print("123");
  }
}





// class Windwos extends MacBook {}
