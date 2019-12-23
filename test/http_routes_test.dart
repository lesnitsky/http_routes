import 'package:flutter_test/flutter_test.dart';

import 'package:http_routes/http_routes.dart';

void main() {
  test('matches routes', () {
    expect(GET('/todos'), Route('GET', '/todos'));
    expect(GET('/todos') == Route('GET', '/other'), false);

    expect(POST('/todos'), Route('POST', '/todos'));
    expect(POST('/todos') == Route('POST', '/other'), false);

    expect(PUT('/todos'), Route('PUT', '/todos'));
    expect(PUT('/todos') == Route('PUT', '/other'), false);

    expect(PATCH('/todos'), Route('PATCH', '/todos'));
    expect(PATCH('/todos') == Route('PATCH', '/other'), false);

    expect(DELETE('/todos'), Route('DELETE', '/todos'));
    expect(DELETE('/todos') == Route('DELETE', '/other'), false);

    expect(OPTIONS('/todos'), Route('OPTIONS', '/todos'));
    expect(OPTIONS('/todos') == Route('OPTIONS', '/other'), false);

    expect(HEAD('/todos'), Route('HEAD', '/todos'));
    expect(HEAD('/todos') == Route('HEAD', '/other'), false);
  });

  test('extracts request params', () {
    final route = Route('GET', '/todos/123');

    expect(GET('/todos/:id'), route);
    expect(route.param('id'), '123');
  });
}
