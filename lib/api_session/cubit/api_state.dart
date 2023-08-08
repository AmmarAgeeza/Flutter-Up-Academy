
sealed class ApiState {}

final class ApiInitial extends ApiState {}
final class GetAlbumLoadingState extends ApiState {}
final class GetAlbumSucessState extends ApiState {}
final class GetAlbumErrorState extends ApiState {}
