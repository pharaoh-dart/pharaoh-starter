# Minimal Pharaoh Starter

Minimal pharaoh backend project that comes with testing. No additional stuffs.

```dart
import 'package:pharaoh/pharaoh.dart';

Pharaoh createApp() {
  final app = Pharaoh();

  app.use(logRequests);

  app.get('/', (req, res) => res.ok('Hello World 🚀'));

  return app;
}
```


### Setup

```shell
$ dart pub get
```

### Start

```shell
$ dart run
```

### Tests

```shell
$ dart test
```