import 'dart:io';

void main() async {
  var server = await HttpServer.bind(InternetAddress.anyIPv6, 4444);
  
  await server.forEach((HttpRequest req) {
    req.response.write("Hello");
    req.response.close();
  });
}