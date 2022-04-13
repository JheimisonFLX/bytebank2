import 'package:http/http.dart';

void findAll() async {
  final url = Uri.http('192.168.100.21:8080', 'transactions');

  final Response response = await get(url);
  print(response.body);
}