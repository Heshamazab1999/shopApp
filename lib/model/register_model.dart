class UserModel {
  String name;
  String password;

  UserModel({
    this.name,
    this.password,
  });

  factory UserModel.fromSnapshot(Map<String, dynamic> json) {
    return UserModel(
      name: json["name"],
      password: json["password"],
    );
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = name;
    map["password"] = password;
    return map;
  }
}
