import 'package:dio/dio.dart';

/// @description:请求日志  拦截器
/// @author xcl qq:244672784
/// @Date 2020/5/5 15:57
class HttpLogInterceptor extends LogInterceptor {
  @override
  Future onRequest(RequestOptions options) {
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) {
    return super.onError(err);
  }
}
