import 'package:ecommerce/features/auth/data/models/login_request.dart';
import 'package:ecommerce/features/auth/data/models/register_request.dart';
import 'package:ecommerce/features/auth/data/repositories/auth_repository.dart';
import 'package:ecommerce/features/auth/presentation/cubit/auth_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final AuthRepository _repository = AuthRepository();
  Future<void> register(RegisterRequest registerRequest) async {
    emit(RegisterLoading());
    final result = await _repository.register(registerRequest);
    result.fold(
      (failure) => emit(RegisterError(failure.message)),
      (_) => emit(RegisterSuccess()),
    );
  }

  Future<void> login(LoginRequest loginRequest) async {
    emit(LoginLoading());
    final result = await _repository.login(loginRequest);
    result.fold(
      (failure) => emit(LoginError(failure.message)),
      (_) => emit(LoginSuccess()),
    );
  }
}
