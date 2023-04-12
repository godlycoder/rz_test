class UserDTO {
  UserDTO({
      required this.id,
      required this.email,
      required this.firstName,
      required this.lastName,
      required this.avatar,
  });

  factory UserDTO.fromJson(dynamic json) {
    return UserDTO(
      id : json['id'],
      email : json['email'],
      firstName : json['first_name'],
      lastName : json['last_name'],
      avatar : json['avatar'],
    );
  }
  int id;
  String email;
  String firstName;
  String lastName;
  String avatar;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['email'] = email;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['avatar'] = avatar;
    return map;
  }

}