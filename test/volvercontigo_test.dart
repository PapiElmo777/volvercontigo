import 'package:volvercontigo/volvercontigo.dart';
import 'package:test/test.dart';

void main() {
  test('No hay agua', () {
    expect(calculargotitas([]), 0);
  });
  test('No hay agua en un elemento', () {
    expect(calculargotitas([5]), 0);
  });
  test('Hay 3 gotas de agua', () {
    expect(calculargotitas([5,0,1,2]), 3);
  });
  test('Hay 7 gotas de agua', () {
    expect(calculargotitas([6,0,3,4,1,3]), 7);
  });
  test('Hay 6 gotas de agua', () {
    expect(calculargotitas([0,1,0,2,1,0,1,3,2,1,2,1]), 6);
  });
}

