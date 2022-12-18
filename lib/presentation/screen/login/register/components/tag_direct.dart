part of '../interest_tag_screen.dart';

class _DirectlyAddTag extends StatelessWidget {
  const _DirectlyAddTag({required this.onDirectlyAdd});

  final void Function() onDirectlyAdd;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onDirectlyAdd,
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: lightColorTheme.tertiaryColor,
            ),
            child: const Icon(
              Icons.add,
              color: Colors.white,
              size: 16,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          const Text('직접 입력'),
        ],
      ),
    );
  }
}

class _DirectlyAddTagDialog extends StatefulWidget {
  const _DirectlyAddTagDialog();

  @override
  State<_DirectlyAddTagDialog> createState() => __DirectlyAddTagDialogState();
}

class __DirectlyAddTagDialogState extends State<_DirectlyAddTagDialog> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  onSubmit() {
    if (controller.text.isEmpty) return;

    BlocProvider.of<RegisterBloc>(context)
        .add(RegisterEvent.addTag(Tag(id: controller.text)));
    Navigator.pop(context, true);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 200.w,
        height: 120.h,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 10.h,
          ),
          child: Column(
            children: [
              Text(
                '직접 입력',
                style: TextStyle(fontSize: 16.sp),
              ),
              SizedBox(height: 10.h),
              TextField(
                controller: controller,
                decoration: InputDecoration(
                    suffixIcon: InkWell(
                  onTap: onSubmit,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 20.h),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Text(
                          '확인',
                          style:
                              TextStyle(color: lightColorTheme.tertiaryColor),
                        ),
                      ),
                    ],
                  ),
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
