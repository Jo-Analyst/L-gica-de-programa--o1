import 'animal.dart';
import 'cachorro.dart';
import 'gato.dart';

void main() {
  Animal meuGato = Gato();
  Animal meuCachoro = Cachorro();

  meuGato.emitirSom();
  meuCachoro.emitirSom();
}
