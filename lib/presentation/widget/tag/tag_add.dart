import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';
import 'package:grasstudy_client/presentation/widget/autocomplete/autocomplete.dart';
import 'package:grasstudy_client/presentation/widget/tag/tag_direct.dart';
import 'package:grasstudy_client/presentation/widget/tag/tag_generated.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddTag extends StatelessWidget {
  const AddTag({
    super.key,
    required this.onAdd,
    required this.onTagAddSubmit,
  });

  final Future<String?> Function(BuildContext) onAdd;
  final void Function(BuildContext, Tag) onTagAddSubmit;

  static Future<String?>
      showAddTagDialog<T extends StateStreamableSource<Object?>, String>(
    BuildContext superContext,
    void Function(BuildContext, Tag) onTagAddSubmit,
  ) async {
    String? tag = await showCupertinoDialog(
        context: superContext,
        barrierDismissible: true,
        builder: ((context) {
          return BlocProvider<T>.value(
            value: superContext.read<T>(),
            child: AddTagDialog(
              onDirectlyAdd: () =>
                  DirectlyAddTag.showDirectlyAddDialog<T, String?>(
                      superContext, onTagAddSubmit),
              onSubmit: (tag) => onTagAddSubmit(superContext, tag),
            ),
          );
        }));

    return tag;
  }

  @override
  Widget build(BuildContext context) {
    return TagWidget(
      onSelect: () => onAdd(context),
      selected: true,
      tag: Tag(id: ''),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: const [
          Icon(
            Icons.add,
            color: Colors.white,
          ),
          Text(
            ' 추가',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class AddTagDialog extends StatefulWidget {
  const AddTagDialog({
    super.key,
    required this.onDirectlyAdd,
    required this.onSubmit,
  });

  final void Function() onDirectlyAdd;
  final void Function(Tag) onSubmit;

  @override
  State<AddTagDialog> createState() => AddTagDialogState();
}

class AddTagDialogState extends State<AddTagDialog> {
  Tag? selectedTag;

  onSubmit() {
    if (selectedTag == null) return;
    widget.onSubmit(selectedTag!);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300.w,
        height: 500.h,
        child: Column(
          children: [
            SizedBox(height: 24.h),
            Text(
              '태그 입력',
              style: TextStyle(fontSize: 24.sp),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0.w),
              child: AppAutoComplete<Tag>(
                readOnly: true,
                label: '태그 찾기',
                options: [
                  Tag(id: 'tag1'),
                  Tag(id: 'tag2'),
                  Tag(id: 'tag3'),
                  Tag(id: 'tag4'),
                  Tag(id: 'tag5'),
                ],
                customOptions: [
                  DirectlyAddTag(
                    onDirectlyAdd: widget.onDirectlyAdd,
                  ),
                ],
                onSelect: (value) => selectedTag = value,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: onSubmit,
              child: Text(
                '확인',
                style: TextStyle(
                  fontSize: 16.sp,
                  color: lightColorTheme.tertiaryColor,
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
