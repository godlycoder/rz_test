class TokenDTO {
  TokenDTO({
      required this.id,
      required this.token,});

  factory TokenDTO.fromJson(dynamic json) {
    return TokenDTO(
      id : json['id'],
      token : json['token']
    );
  }
  int id;
  String token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['token'] = token;
    return map;
  }

}