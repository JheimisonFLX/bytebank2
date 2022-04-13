import 'package:http/http.dart';
import 'package:http_interceptor/http_interceptor.dart';

void findAll() async {

  final url = Uri.http('192.168.100.21:8080', 'transactions');

  Client client = InterceptedClient.build(interceptors: [LoggingInterceptor()]);

  final Response response = await client.get(url);
  print(response.body);
}


class LoggingInterceptor implements InterceptorContract {
  @override
  Future<RequestData> interceptRequest({required RequestData data}) async {
    print('Request');
    print('url: ${data.url}');
    print('headers: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }

  @override
  Future<ResponseData> interceptResponse({required ResponseData data}) async {
    print('Response');
    print('status code: ${data.statusCode}');
    print('headers: ${data.headers}');
    print('body: ${data.body}');
    return data;
  }
}

