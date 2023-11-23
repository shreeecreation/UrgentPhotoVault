import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:urgentvault/src/core/extensions/extensions.dart';
import 'package:urgentvault/src/core/themes/theme.dart';
import 'package:urgentvault/src/features/home_page/blocs/list_folder_cubit.dart';

class CreateFolderDialogBox extends StatefulWidget {
  const CreateFolderDialogBox({Key? key}) : super(key: key);

  @override
  State<CreateFolderDialogBox> createState() => _CreateFolderDialogBoxState();
}

class _CreateFolderDialogBoxState extends State<CreateFolderDialogBox> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: const EdgeInsets.symmetric(horizontal: 35, vertical: 18),
      title: Center(
        child: Column(
          children: [
            12.verticalSpace,
            Text('Add folder name', style: AppStyles.text20PxBold),
          ],
        ),
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: context.width / 2,
              child: TextFormField(
                controller: controller,
                autofocus: true,
                scrollPadding: EdgeInsets.zero,
                validator: (value) {
                  if (value!.length < 3) {
                    return 'Enter a valid folder name';
                  }
                  return null;
                },
              ),
            ),
            15.verticalSpace,
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'Cancel',
                    style: AppStyles.text12PxMedium.statusRed,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      context.read<ListFolderCubit>().createFolder(controller.text);
                      Navigator.pop(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Text(
                    'Add Folder',
                    style: AppStyles.text12PxMedium.statusGreen,
                  ),
                ),
              ],
            ),
            10.verticalSpace,
          ],
        ),
      ),
    );
  }
}
