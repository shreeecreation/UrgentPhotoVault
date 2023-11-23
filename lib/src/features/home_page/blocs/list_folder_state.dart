part of 'list_folder_cubit.dart';

@freezed
class ListFolderState with _$ListFolderState {
  const factory ListFolderState.initial() = _Initial;
  const factory ListFolderState.loading() = _Loading;
  const factory ListFolderState.error() = _Error;
  const factory ListFolderState.success({@Default([]) List<FolderListModel> model}) = _Success;
}
