// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Task _$$_TaskFromJson(Map<String, dynamic> json) => _$_Task(
      id: json['id'] as String,
      text: json['text'] as String,
      color: json['color'] as String?,
      importance: $enumDecode(_$ImportanceEnumMap, json['importance']),
      deadline: DateUtil.nullDateFromJson(json['deadline']),
      done: BoolUtil.fromJson(json['done'] as Object),
      createdAt: DateUtil.fromJson(json['created_at']),
      changedAt: DateUtil.fromJson(json['changed_at']),
    );

Map<String, dynamic> _$$_TaskToJson(_$_Task instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'color': instance.color,
      'importance': _$ImportanceEnumMap[instance.importance]!,
      'deadline': DateUtil.toJson(instance.deadline),
      'done': instance.done,
      'created_at': DateUtil.toJson(instance.createdAt),
      'changed_at': DateUtil.toJson(instance.changedAt),
    };

const _$ImportanceEnumMap = {
  Importance.basic: 'basic',
  Importance.low: 'low',
  Importance.important: 'important',
};
