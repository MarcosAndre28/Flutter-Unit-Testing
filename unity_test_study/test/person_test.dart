import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';
import 'package:unity_test_study/person.dart';

void main() {
   final person = Person(name: 'Marcos',age: 23, height: 1.85, weight: 60);
  test('Imc deve vir 17.53', (){
    expect(person.imc, 17.53);
  });

  group('isOlder', (() {
    test('Se a idade for maior que 18, entao isOlder deve ser true', (){
    expect(person.isOlder, true);
  });

  test('Se a idade for igual a 18, entao isOlder deve ser true', (){
    final person = Person(name: 'Marcos',age: 18, height: 1.85, weight: 60);
    expect(person.isOlder, true);
  });
  }));
}