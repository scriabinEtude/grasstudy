import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_bloc.dart';
import 'package:grasstudy_client/bloc/group/bloc/group_register_event.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/presentation/screen/group/register/components/group_register_submit_button.dart';
import 'package:grasstudy_client/presentation/screen/group/register/components/group_register_title.dart';
import 'package:grasstudy_client/presentation/widget/tag/tag_add.dart';
import 'package:grasstudy_client/presentation/widget/tag/tag_generated.dart';
import 'package:go_router/go_router.dart';

class GroupRegister03TagScreen extends StatefulWidget {
  const GroupRegister03TagScreen({super.key});

  static const String routeName = "/group/register/tag";

  @override
  State<GroupRegister03TagScreen> createState() =>
      _GroupRegister03TagScreenState();
}

class _GroupRegister03TagScreenState extends State<GroupRegister03TagScreen> {
  final controller = TextEditingController();
  final List<Tag> tag = [
    Tag(id: 'tag1'),
    Tag(id: 'tag2'),
    Tag(id: 'tag3'),
    Tag(id: 'tag4'),
    Tag(id: 'tag5'),
    Tag(id: 'tag6'),
  ];
  final List<Tag> selectedTags = [];

  bool get validation => selectedTags.isNotEmpty;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  onSubmit() {
    BlocProvider.of<GroupRegisterBloc>(context)
      ..add(GroupRegisterEvent.setTags(selectedTags.map((e) => e.id).toList()))
      ..add(GroupRegisterEvent.submit());
    context.goNamed("/");
  }

  select(Tag tag) {
    if (selectedTags.contains(tag)) {
      selectedTags.remove(tag);
    } else {
      selectedTags.add(tag);
    }
    setState(() {});
  }

  void onTagAddSubmit(BuildContext context, Tag tag) {
    // BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.addTag(tag));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomSheet: GroupRegisterSubmitButton(
        validation: validation,
        onTap: onSubmit,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const GroupRegisterTitle('태그', '를\n선택해 주세요.'),
            Wrap(
              children: [
                ...tag.map((tag) => GeneratedTag(
                      onSelect: () => select(tag),
                      selected: selectedTags.contains(tag),
                      tag: tag,
                    )),
                AddTag(
                  onAdd: (context) =>
                      AddTag.showAddTagDialog<GroupRegisterBloc, String>(
                    context,
                    onTagAddSubmit,
                  ),
                  onTagAddSubmit: onTagAddSubmit,
                ),
              ],
            ),
            const SizedBox.shrink(),
            const SizedBox.shrink(),
          ],
        ),
      ),
    );
  }
}
