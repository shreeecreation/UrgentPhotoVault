// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'folder_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FolderListModel _$FolderListModelFromJson(Map<String, dynamic> json) {
  return _FolderListModel.fromJson(json);
}

/// @nodoc
mixin _$FolderListModel {
  String get folderName => throw _privateConstructorUsedError;
  List<String> get imagePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FolderListModelCopyWith<FolderListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FolderListModelCopyWith<$Res> {
  factory $FolderListModelCopyWith(
          FolderListModel value, $Res Function(FolderListModel) then) =
      _$FolderListModelCopyWithImpl<$Res, FolderListModel>;
  @useResult
  $Res call({String folderName, List<String> imagePath});
}

/// @nodoc
class _$FolderListModelCopyWithImpl<$Res, $Val extends FolderListModel>
    implements $FolderListModelCopyWith<$Res> {
  _$FolderListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderName = null,
    Object? imagePath = null,
  }) {
    return _then(_value.copyWith(
      folderName: null == folderName
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FolderListModelImplCopyWith<$Res>
    implements $FolderListModelCopyWith<$Res> {
  factory _$$FolderListModelImplCopyWith(_$FolderListModelImpl value,
          $Res Function(_$FolderListModelImpl) then) =
      __$$FolderListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String folderName, List<String> imagePath});
}

/// @nodoc
class __$$FolderListModelImplCopyWithImpl<$Res>
    extends _$FolderListModelCopyWithImpl<$Res, _$FolderListModelImpl>
    implements _$$FolderListModelImplCopyWith<$Res> {
  __$$FolderListModelImplCopyWithImpl(
      _$FolderListModelImpl _value, $Res Function(_$FolderListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? folderName = null,
    Object? imagePath = null,
  }) {
    return _then(_$FolderListModelImpl(
      folderName: null == folderName
          ? _value.folderName
          : folderName // ignore: cast_nullable_to_non_nullable
              as String,
      imagePath: null == imagePath
          ? _value._imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FolderListModelImpl implements _FolderListModel {
  const _$FolderListModelImpl(
      {required this.folderName, final List<String> imagePath = const []})
      : _imagePath = imagePath;

  factory _$FolderListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FolderListModelImplFromJson(json);

  @override
  final String folderName;
  final List<String> _imagePath;
  @override
  @JsonKey()
  List<String> get imagePath {
    if (_imagePath is EqualUnmodifiableListView) return _imagePath;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imagePath);
  }

  @override
  String toString() {
    return 'FolderListModel(folderName: $folderName, imagePath: $imagePath)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FolderListModelImpl &&
            (identical(other.folderName, folderName) ||
                other.folderName == folderName) &&
            const DeepCollectionEquality()
                .equals(other._imagePath, _imagePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, folderName, const DeepCollectionEquality().hash(_imagePath));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FolderListModelImplCopyWith<_$FolderListModelImpl> get copyWith =>
      __$$FolderListModelImplCopyWithImpl<_$FolderListModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FolderListModelImplToJson(
      this,
    );
  }
}

abstract class _FolderListModel implements FolderListModel {
  const factory _FolderListModel(
      {required final String folderName,
      final List<String> imagePath}) = _$FolderListModelImpl;

  factory _FolderListModel.fromJson(Map<String, dynamic> json) =
      _$FolderListModelImpl.fromJson;

  @override
  String get folderName;
  @override
  List<String> get imagePath;
  @override
  @JsonKey(ignore: true)
  _$$FolderListModelImplCopyWith<_$FolderListModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
