
class Animal{

  static isPersion(){

  }
  int age(){
    return 5;
  }
}



class Persion extends Animal with cofig   {
  @override
  int age() {
  return 1;
  }

}

mixin cofig{

  String get name{
    return '';
  }
}