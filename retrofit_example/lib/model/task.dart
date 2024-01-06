import 'package:json_annotation/json_annotation.dart';

part 'task.g.dart';

// retrofit(dio) - json_serialize 라이브러리는 이 3개를 사용함.

// explicitToJson - child toJson() 사용 여부
// includeIfNull - null 포함 여부
@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Task {
  const Task({
    this.id, 
    this.name, 
    this.avatar, 
    this.createdAt
  });

  // @JsonKey(name: 'taskId')
  final String? id;
  // @JsonKey(includeFromJson: false, includeToJson: true)
  final String? name;
  // @JsonKey(fromJson: _fromJson, toJson: _toJson)  // avatar는 내가 커스텀한 걸 쓰겠다 하면 지정을 해준다.
  final String? avatar;
  // @JsonKey(readValue: _readValue)
  final String? createdAt;

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
  Map<String, dynamic> toJson() => _$TaskToJson(this);

  // static String _fromJson() {
  //   return '';
  // }

  // static String _toJson() {
  //   return '';
  // }

  // static dynamic _readValue(Map map, String key) {
  //   return map[key];
  // }
}