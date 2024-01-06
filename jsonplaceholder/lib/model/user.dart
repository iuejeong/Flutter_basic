import 'package:json_annotation/json_annotation.dart';
import 'package:jsonplaceholder/model/address.dart';
import 'package:jsonplaceholder/model/company.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  const User({
    this.id, 
    this.name, 
    this.username, 
    this.email,
    this.phone,
    this.website,
    this.address,
    this.company,
  });

  final int? id;
  final String? name;
  final String? username;
  final String? email;
  final Address? address;
  final String? phone;
  final String? website;
  final Company? company;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
  Map<String, dynamic> toJson() => _$UserToJson(this);
}
