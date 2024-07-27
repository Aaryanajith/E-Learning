// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuizImpl _$$QuizImplFromJson(Map<String, dynamic> json) => _$QuizImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => QuizOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$QuizImplToJson(_$QuizImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'options': instance.options,
    };

_$QuizOptionsImpl _$$QuizOptionsImplFromJson(Map<String, dynamic> json) =>
    _$QuizOptionsImpl(
      id: json['id'] as String,
      optionContent: json['optionContent'] as String,
    );

Map<String, dynamic> _$$QuizOptionsImplToJson(_$QuizOptionsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'optionContent': instance.optionContent,
    };
