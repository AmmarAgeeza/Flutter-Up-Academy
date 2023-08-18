sealed class SendCodeState {}

final class SendCodeInitial extends SendCodeState {}
final class SendCodeLoading extends SendCodeState {}
final class SendCodeSucess extends SendCodeState {
  final String message;

  SendCodeSucess(this.message);
}
final class SendCodeError extends SendCodeState {
    final String message;

  SendCodeError(this.message);

}
