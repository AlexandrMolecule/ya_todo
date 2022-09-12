// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskR _$$_TaskRFromJson(Map<String, dynamic> json) => _$_TaskR(
      status: json['status'] as String,
      revision: json['revision'] as int,
      task: Task.fromJson(json['element'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TaskRToJson(_$_TaskR instance) => <String, dynamic>{
      'status': instance.status,
      'revision': instance.revision,
      'element': instance.task,
    };
