import 'package:jinja/loaders.dart';
import 'package:pharaoh/pharaoh.dart';
import 'package:jinja/jinja.dart';

Pharaoh createApp() {
  final app = Pharaoh();

  final env = Environment(
    autoReload: false,
    trimBlocks: true,
    leftStripBlocks: true,
    loader: FileSystemLoader(paths: ['resources/views'], extensions: {'j2'}),
  );
  app.viewEngine = JinjaViewEngine(env, fileExt: 'j2');

  app.get('/', (req, res) async {
    return res.render(
      'index',
      {'firstname': 'Chima', 'lastname': 'Precious'},
    );
  });

  /// json -> is slow prolly use isolate
  ///
  /// hello world -> 2 isolates -> 90k Req/sec
  ///
  /// hello world -> 3 isolates -> 103k Req/sec
  ///

  return app;
}
