class LoginApi {
  LoginApi({
    this.error,
    this.message,
    this.data,
  });

  bool error;
  String message;
  Data data;

  factory LoginApi.fromJson(Map<String, dynamic> json) => LoginApi(
    error: json["error"],
    message: json["message"],
    data: Data.fromJson(json["data"]),
  );

  Map<String, dynamic> toJson() => {
    "error": error,
    "message": message,
    "data": data.toJson(),
  };
}

class Data {
  Data({
    this.id,
    this.apiKey,
    this.name,
    this.mobile,
    this.rewardPoints,
    this.email,
  });

  String id;
  String apiKey;
  String name;
  String mobile;
  String rewardPoints;
  String email;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    id: json["id"],
    apiKey: json["api_key"],
    name: json["name"],
    mobile: json["mobile"],
    rewardPoints: json["reward_points"],
    email: json["email"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "api_key": apiKey,
    "name": name,
    "mobile": mobile,
    "reward_points": rewardPoints,
    "email": email,
  };
}
