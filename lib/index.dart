import 'package:pharaoh/pharaoh.dart';

Pharaoh createApp() {
  final app = Pharaoh();

  app.use(logRequests);

  app.get('/', (req, res) => res.ok('Hello World 🚀'));

  return app;
}
