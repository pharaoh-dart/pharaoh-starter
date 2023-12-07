import 'package:server/index.dart';

void main(List<String> arguments) async {
  final app = createApp();

  await app.listen();
}
