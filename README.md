# http_routes

Utility to match http requests with routes

[![GitHub stars](https://img.shields.io/github/stars/lesnitsky/http_routes.svg?style=social)](https://github.com/lesnitsky/http_routes)
[![Twitter Follow](https://img.shields.io/twitter/follow/lesnitsky_a.svg?label=Follow%20me&style=social)](https://twitter.com/lesnitsky_a)

## Usage

```dart
import 'dart:io';

import 'package:http_routes/http_routes.dart';

void main() async {
  final server = await HttpServer.bind(InternetAddress.anyIPv4, 3000);

  await for (HttpRequest req in server) {
    final route = req.route();

    if (route == GET('/todos')) print('get all todos');
    if (route == GET('/todos/:id'))
      print('get todo with id ${route.param('id')}');

    if (route == GET('/lists/:listId/:todoId'))
      print(
          'get todo with id ${route.param('todoId')} from list ${route.param('listId')}');
  }
}

```

## License

MIT

[![GitHub stars](https://img.shields.io/github/stars/lesnitsky/http_routes.svg?style=social)](https://github.com/lesnitsky/http_routes)
[![Twitter Follow](https://img.shields.io/twitter/follow/lesnitsky_a.svg?label=Follow%20me&style=social)](https://twitter.com/lesnitsky_a)
