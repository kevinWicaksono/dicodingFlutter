import 'dart:convert';

class User2 {
  String id;
  String name;
  String address;
  List<Hobby> hobbies;

  User2({
    required this.id,
    required this.name,
    required this.address,
    required this.hobbies,
  });

  factory User2.fromRawJson(String str) => User2.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory User2.fromJson(Map<String, dynamic> json) => User2(
        id: json["id"],
        name: json["name"],
        address: json["address"],
        hobbies:
            List<Hobby>.from(json["hobbies"].map((x) => Hobby.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "address": address,
        "hobbies": List<dynamic>.from(hobbies.map((x) => x.toJson())),
      };
}

class Hobby {
  String name;

  Hobby({
    required this.name,
  });

  factory Hobby.fromRawJson(String str) => Hobby.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Hobby.fromJson(Map<String, dynamic> json) => Hobby(
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
      };
}
