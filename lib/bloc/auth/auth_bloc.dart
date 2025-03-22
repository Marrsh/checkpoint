import 'package:bloc/bloc.dart';
import 'package:level_up/data/repositories/auth_repository.dart';
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
        // emit loading state

        AuthRepository authRepository = AuthRepository();

        String token = await authRepository.getIgdbToken();

        if (token == '') {}

        // state.copyWith

        // check if token exits
        // check validity of token
        // fetch new token
      },
    );
  }
}
