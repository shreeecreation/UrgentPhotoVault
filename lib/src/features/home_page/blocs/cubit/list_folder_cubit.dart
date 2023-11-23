import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'list_folder_state.dart';
part 'list_folder_cubit.freezed.dart';

@injectable
class ListFolderCubit extends Cubit<ListFolderState> {
  ListFolderCubit() : super(const ListFolderState.initial());
}
