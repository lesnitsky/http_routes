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
