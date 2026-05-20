import 'package:flutter_test/flutter_test.dart';
import 'package:recygreen/models/planta2.dart';

void main() {

  group('Planta2', () {

    test('subirNivel increments nivel', () {

      final planta = Planta(
        nombre: 'Test',
        emoji: 'T',
        puntosNecesarios: 10,
      );

      planta.subirNivel();

      expect(planta.nivel, 2);
    });

    test(
      'desbloquear sets desbloqueada to true if puntosUsuario is enough',
      () {

        final planta = Planta2(
          nombre: 'Test',
          emoji: 'T',
          puntosNecesarios: 10,
        );

        planta.desbloquear(15);

        expect(planta.desbloqueada, true);
      },
    );

    test(
      'desbloquear does not set desbloqueada to true if puntosUsuario is not enough',
      () {

        final planta = Planta2(
          nombre: 'Test',
          emoji: 'T',
          puntosNecesarios: 10,
        );

        planta.desbloquear(5);

        expect(planta.desbloqueada, false);
      },
    );
  });
}