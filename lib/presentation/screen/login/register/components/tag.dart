part of '../interest_tag_screen.dart';

class _AddTag extends StatelessWidget {
  const _AddTag();

  Future<T?> onSelect<T>(BuildContext context) {
    return showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: ((context) {
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
                    child: const AppAutoComplete<String>(
                      readOnly: true,
                      label: '태그 찾기',
                      options: ['태그1', '태그2', '태그3', '태그4'],
                      customOptions: [
                        _DirectlyAddTag(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }));
  }

  @override
  Widget build(BuildContext context) {
    return _Tag(
      onSelect: () => onSelect(context),
      selected: true,
      tag: const Tag(id: ''),
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

class _GeneratedTag extends StatelessWidget {
  const _GeneratedTag({
    required this.onSelect,
    required this.selected,
    required this.tag,
  });

  final void Function() onSelect;
  final bool selected;
  final Tag tag;

  @override
  Widget build(BuildContext context) {
    return _Tag(
      onSelect: onSelect,
      selected: selected,
      tag: tag,
      child: Text(
        tag.id,
        style: TextStyle(
          fontSize: 18,
          color: selected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({
    Key? key,
    required this.onSelect,
    required this.selected,
    required this.tag,
    required this.child,
  }) : super(key: key);

  final void Function() onSelect;
  final bool selected;
  final Tag tag;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelect,
      child: Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 10, 0),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          border: Border.all(
            color: lightColorTheme.tertiaryColor,
          ),
          borderRadius: BorderRadius.circular(30),
          color: selected ? lightColorTheme.tertiaryColor : Colors.white,
        ),
        child: child,
      ),
    );
  }
}

class _DirectlyAddTag extends StatelessWidget {
  const _DirectlyAddTag();
  Future<T?> onSelect<T>(BuildContext context) {
    return showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
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
                      decoration: InputDecoration(
                          suffixIcon: InkWell(
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 20.h),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(
                                '확인',
                                style: TextStyle(
                                    color: lightColorTheme.tertiaryColor),
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
        });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onSelect(context),
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
