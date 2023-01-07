import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DirectlyAddTag extends StatelessWidget {
  const DirectlyAddTag({
    super.key,
    required this.onDirectlyAdd,
  });

  final void Function() onDirectlyAdd;

  static Future<String?>
      showDirectlyAddDialog<T extends StateStreamableSource<Object?>, String>(
    BuildContext superContext,
    void Function(BuildContext, Tag) onTagAddSubmit,
  ) async {
    Navigator.pop(superContext);
    return await showCupertinoDialog<String>(
        context: superContext,
        barrierDismissible: true,
        builder: (_) {
          return BlocProvider<T>.value(
            value: superContext.read<T>(),
            child: DirectlyAddTagDialog(
              onSubmit: (tag) => onTagAddSubmit(superContext, tag),
            ),
          );
        });
  }

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

class DirectlyAddTagDialog extends StatefulWidget {
  const DirectlyAddTagDialog({
    super.key,
    required this.onSubmit,
  });

  final void Function(Tag) onSubmit;

  @override
  State<DirectlyAddTagDialog> createState() => DirectlyAddTagDialogState();
}

class DirectlyAddTagDialogState extends State<DirectlyAddTagDialog> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  onSubmit() {
    if (controller.text.isEmpty) return;
    widget.onSubmit(Tag(id: controller.text));

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
