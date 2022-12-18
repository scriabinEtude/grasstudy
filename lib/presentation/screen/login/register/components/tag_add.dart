part of '../interest_tag_screen.dart';

class _AddTag extends StatelessWidget {
  const _AddTag({
    required this.onAdd,
  });

  final Future<String?> Function(BuildContext) onAdd;

  @override
  Widget build(BuildContext context) {
    return _Tag(
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

class _AddTagDialog extends StatefulWidget {
  const _AddTagDialog({required this.onDirectlyAdd});

  final void Function() onDirectlyAdd;

  @override
  State<_AddTagDialog> createState() => _AddTagDialogState();
}

class _AddTagDialogState extends State<_AddTagDialog> {
  Tag? selectedTag;

  onSubmit() {
    if (selectedTag == null) return;

    BlocProvider.of<RegisterBloc>(context)
        .add(RegisterEvent.addTag(selectedTag!));
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
                  _DirectlyAddTag(
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
