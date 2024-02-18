import 'dart:math' as math;

class Person {
  Person({required this.name, required this.age,required this.height, required this.weight});

  final String name;
  final int age;
  final double height;
  final double weight;

  double get imc {
    var result = weight / math.pow(height,2);
    result = result * 100;
    return result.roundToDouble() / 100;
  }


  bool get isOlder {
    return age >= 18;
  }
  
}