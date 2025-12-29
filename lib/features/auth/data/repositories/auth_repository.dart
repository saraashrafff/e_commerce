import 'package:ecommerce/features/auth/data/data_sources/local/auth_shared_pref_local_data_source.dart';
import 'package:ecommerce/features/auth/data/data_sources/remote/auth_api_remote_data_source.dart';
import 'package:ecommerce/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:ecommerce/features/auth/data/models/login_request.dart';
import 'package:ecommerce/features/auth/data/models/register_request.dart';
import 'package:ecommerce/features/auth/data/models/user_model.dart';

class AuthRepository {
  final AuthRemoteDataSource _remoteDataSource = AuthAPIRemoteDataSource();
  final AuthSharedPrefLocalDataSource _localDataSource =
      AuthSharedPrefLocalDataSource();

  Future<UserModel> register(RegisterRequest request) async {
    final response = await _remoteDataSource.register(request);
    await _localDataSource.saveToken(response.token);
    return response.user;
  }

  Future<UserModel> login(LoginRequest request) async {
    final response = await _remoteDataSource.login(request);
    await _localDataSource.saveToken(response.token);

    return response.user;
  }
}
