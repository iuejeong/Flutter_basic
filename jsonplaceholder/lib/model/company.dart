import 'package:json_annotation/json_annotation.dart';

part 'company.g.dart';

@JsonSerializable()
class Company {
  const Company({
    this.name,
    this.catchPhrase,
    this.bs
  });
  final String? name;
  final String? catchPhrase;
  final String? bs;

  factory Company.fromJson(Map<String, dynamic> json) => _$CompanyFromJson(json);
  Map<String, dynamic> toJson() => _$CompanyToJson(this);
}