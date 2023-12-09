import 'dart:io';
import 'dart:isolate';

import 'package:server/index.dart';

void main(args) {
  makeIsolates(4);
}

void runServer(message) async {
  final app = createApp();

  await app.listen(port: 80);
}

Future<void> makeIsolates(int number) async {
  for (int i = 0; i < number; i++) {
    await Isolate.spawn(runServer, 'App Instance $i');
  }

  stdin.readByteSync();
}
