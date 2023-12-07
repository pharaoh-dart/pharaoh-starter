import 'package:pharaoh/pharaoh.dart';
import 'package:server/index.dart';
import 'package:spookie/spookie.dart';

void main() {
  late Pharaoh app;

  setUpAll(() => app = createApp());

  group('server', () {
    test('should respond `Hello World 🚀`', () async {
      await (await request(app))
          .get('/')
          .expectStatus(200)
          .expectBody('Hello World 🚀')
          .expectContentType('text/plain; charset=utf-8')
          .test();
    });
  });
}
