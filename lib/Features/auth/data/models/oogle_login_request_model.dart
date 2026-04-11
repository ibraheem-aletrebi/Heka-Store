class GoogleLoginRequestModel {
  final String idToken;
  const GoogleLoginRequestModel({required this.idToken});
  Map<String, dynamic> toJson() => {'idToken': idToken};
}