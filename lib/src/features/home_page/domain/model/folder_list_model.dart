import 'package:freezed_annotation/freezed_annotation.dart';
part 'folder_list_model.g.dart';

part 'folder_list_model.freezed.dart';

@freezed
class FolderListModel with _$FolderListModel {
  const factory FolderListModel({required String folderName, @Default([]) List<String> imagePath}) = _FolderListModel;

  factory FolderListModel.fromJson(Map<String, dynamic> json) => _$FolderListModelFromJson(json);
}
