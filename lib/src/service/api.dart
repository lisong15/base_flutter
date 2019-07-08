import 'dart:io';
import 'package:dio/dio.dart';

/// 网络请求公共类
class HttpUtil {
  var _domain =
      "https://mockapi.eolinker.com/YCVt4RG5925d891aeff2c40df3835358af12017e5447d36"; //count:5
  static HttpUtil _instance;
  Dio _dio;

  factory HttpUtil.getInstance() {
    if (_instance == null) {
      _instance = new HttpUtil._();
    }
    return _instance;
  }

  ///私有命名构造方法，防止外部进行初始化
  HttpUtil._() {
    print('dio赋值');
    // 或者通过传递一个 `options`来创建dio实例
    var options = BaseOptions(
      baseUrl: _domain,
      //连接服务器超时时间，单位是毫秒.
      connectTimeout: 10 * 1000,
      contentType:
          ContentType('application', 'application/json', charset: 'utf-8'),
      receiveTimeout: 3 * 1000,
      headers: {},
    );
    _dio = new Dio(options);
  }

  /// get方法
  get(url, {param, options, cancelToken}) async {
//    print('get请求启动 01 url：${_domain + url} ,body: $param');
    Response response;
    try {
      response = await _dio.get(
        url,
        queryParameters: param,
        cancelToken: cancelToken,
      );
//      print('get请求成功 03response.data：${response.data}');
    } on DioError catch (e) {
//      if (CancelToken.isCancel(e)) {
//        print('get请求取消! ' + e.message);
//      }
//      print('get请求发生错误：$e');
      return e;
    } finally {
      print('get请求执行完毕');
    }
//    print('get请求启动 02 before return totalUri,body: $param');
    return response.data;
  }

  /// post方法
  post(url, {param, options, cancelToken}) async {
//    print('post请求启动! url：${_domain + url} ,body: $param');
    Response response;
    try {
      response = await _dio.post(
        url,
        data: param,
        cancelToken: cancelToken,
      );
//      print('post请求成功!response.data：${response.data}');
    } on DioError catch (e) {
//      if (CancelToken.isCancel(e)) {
//        print('post请求取消! ' + e.message);
//      }
//      print('post请求发生错误：$e');
      return e;
    }
    return response.data;
  }
}
