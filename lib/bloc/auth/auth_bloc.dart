import 'package:bloc/bloc.dart';
import 'package:checkpoint/bloc/loading_status.dart';
import 'package:checkpoint/data/repositories/auth_repository.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {
      // TODO: implement event handler
    });

    on<RequestIDGBAuth>(
      (event, emit) async {
        // add error handling
        emit(state.copyWith(loadingStatus: LoadingStatus.loading));

        AuthRepository authRepository = AuthRepository();

        String token = await authRepository.getIgdbToken();

        if (token == '') {
          token = await authRepository.getFreshIgdbAuthToken();
          await authRepository.setIgdbToken(token: token);
        }

        emit(state.copyWith(
            loadingStatus: LoadingStatus.loaded, igdbToken: token));
      },
    );
  }
}
