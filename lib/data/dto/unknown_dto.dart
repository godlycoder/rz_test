class UnknownDTO {
  UnknownDTO({
      required this.id,
      required this.name,
      required this.year,
      required this.color,
      required this.pantoneValue,});

  factory UnknownDTO.fromJson(dynamic json) {
    return UnknownDTO(
      id : json['id'],
      name : json['name'],
      year : json['year'],
      color : json['color'],
      pantoneValue : json['pantone_value'],
    );
  }
  int id;
  String name;
  int year;
  String color;
  String pantoneValue;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['year'] = year;
    map['color'] = color;
    map['pantone_value'] = pantoneValue;
    return map;
  }

}