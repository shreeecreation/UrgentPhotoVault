import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urgentvault/src/core/injectors/injector.dart';
import 'package:urgentvault/src/core/widgets/scaffold_wrapper.dart';
import 'package:urgentvault/src/features/home_page/blocs/list_folder_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ListFolderCubit>()..getFolderList(),
      child: ScaffoldWrapper(
        appBar: AppBar(
          title: const Text("Urgent Photo Vault"),
        ),
        body: Center(
          child: BlocBuilder<ListFolderCubit, ListFolderState>(builder: (context, state) {
            return state.maybeWhen(
                orElse: () => Container(),
                loading: () => const Text("loading"),
                success: (model) {
                  if (model.isEmpty) {
                    return Column(
                      children: [
                        const Text("Empty Folder"),
                        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                      ],
                    );
                  } else {
                    return const Text("Loaded");
                  }
                });
          }),
        ),
      ),
    );
  }
}
