import 'package:bloc/bloc.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:urgentvault/src/features/home_page/domain/model/folder_list_model.dart';

part 'list_folder_state.dart';
part 'list_folder_cubit.freezed.dart';

@injectable
class ListFolderCubit extends Cubit<ListFolderState> {
  ListFolderCubit() : super(const ListFolderState.initial());

  void getFolderList() {
    emit(const ListFolderState.loading());
    Future.delayed(1000.ms, () {
      emit(const ListFolderState.success(model: []));
    });
  }

  void createFolder(String folderName) {
    final myBox = Hive.box('folderNameBox');
    int boxSize = myBox.length;
    myBox.put(boxSize + 1, folderName);
  }
}
