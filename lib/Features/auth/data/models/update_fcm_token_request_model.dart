class UpdateFcmTokenRequestModel {
  final String fcmToken;
  const UpdateFcmTokenRequestModel({required this.fcmToken});
  Map<String, dynamic> toJson() => {'fcmToken': fcmToken};
}