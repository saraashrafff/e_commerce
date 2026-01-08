import 'package:ecommerce/core/constants.dart';
import 'package:ecommerce/core/errors/exceptions.dart';
import 'package:ecommerce/features/auth/data/data_sources/local/auth_local_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthSharedPrefLocalDataSource implements AuthLocalDataSource {
  @override
  Future<void> saveToken(String token) async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString(CachedConstants.tokenKey, token);
    } catch (exception) {
      throw const LocalException('Failed to save token');
    }
  }

  @override
  Future<String> getSavedToken() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      return prefs.getString(CachedConstants.tokenKey)!;
    } catch (exception) {
      throw const LocalException('Failed to get saved token');
    }
  }
}
