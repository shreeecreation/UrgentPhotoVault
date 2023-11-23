import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urgentvault/src/core/widgets/scaffold_wrapper.dart';
import 'package:urgentvault/src/features/home_page/blocs/cubit/list_folder_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ListFolderCubit(),
      child: ScaffoldWrapper(
        appBar: AppBar(
          title: const Text("Urgent Photo Vault"),
        ),
        body: const Center(),
      ),
    );
  }
}
