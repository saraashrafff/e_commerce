import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/errors/exceptions.dart';
import 'package:ecommerce/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:ecommerce/features/auth/data/models/login_request.dart';
import 'package:ecommerce/features/auth/data/models/login_response.dart';
import 'package:ecommerce/features/auth/data/models/register_request.dart';
import 'package:ecommerce/features/auth/data/models/register_response.dart';
import 'package:dio/dio.dart';

class AuthAPIRemoteDataSource implements AuthRemoteDataSource {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: APIConstants.baseUrl,
      receiveDataWhenStatusError: true,
    ),
  );
  @override
  Future<RegisterResponse> register(RegisterRequest request) async {
    try {
      final response = await _dio.post(
        APIConstants.registerEndPoint,
        data: request.toJson(),
      );
      return RegisterResponse.fromJson(response.data);
    } catch (exception) {
      String? message;
      if (exception is DioException) {
        message = exception.response?.data['message'];
      }
      throw RemoteException(message ?? 'Failed to register');
    }
  }

  @override
  Future<LoginResponse> login(LoginRequest request) async {
    try {
      final response = await _dio.post(
        APIConstants.loginEndPoint,
        data: request.toJson(),
      );
      return LoginResponse.fromJson(response.data);
    } catch (exception) {
      String? message;
      if (exception is DioException) {
        message = exception.response?.data['message'];
      }
      throw RemoteException(message ?? 'Failed to login');
    }
  }
}
