import 'package:freezed_annotation/freezed_annotation.dart';

part 'notes_models.freezed.dart';
part 'notes_models.g.dart';

@freezed
class Notes with _$Notes {
  factory Notes({
    required String id,
    required String file
  }) = _Notes;

  factory Notes.fromJson(Map<String, dynamic> json) => _$NotesFromJson(json);
}
