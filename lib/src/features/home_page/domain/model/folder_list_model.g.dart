// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FolderListModelImpl _$$FolderListModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FolderListModelImpl(
      folderName: json['folderName'] as String,
      imagePath: (json['imagePath'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$FolderListModelImplToJson(
        _$FolderListModelImpl instance) =>
    <String, dynamic>{
      'folderName': instance.folderName,
      'imagePath': instance.imagePath,
    };
