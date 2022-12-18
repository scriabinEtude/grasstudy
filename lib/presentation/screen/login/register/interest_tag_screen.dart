import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';
import 'package:grasstudy_client/bloc/register/register_state.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grasstudy_client/presentation/widget/autocomplete/autocomplete.dart';

part 'components/tag_add.dart';
part 'components/tag_direct.dart';
part 'components/tag_generated.dart';

class InterestTagScreen extends StatelessWidget {
  const InterestTagScreen({super.key});

  Future<String?> onAddTag<String>(BuildContext superContext) async {
    String? tag = await showCupertinoDialog(
        context: superContext,
        barrierDismissible: true,
        builder: ((context) {
          return BlocProvider<RegisterBloc>.value(
            value: superContext.read<RegisterBloc>(),
            child: _AddTagDialog(
              onDirectlyAdd: () => onDirectlyAdd(superContext),
            ),
          );
        }));

    return tag;
  }

  Future<String?> onDirectlyAdd<String>(BuildContext superContext) async {
    Navigator.pop(superContext);
    return await showCupertinoDialog<String>(
        context: superContext,
        barrierDismissible: true,
        builder: (_) {
          return BlocProvider<RegisterBloc>.value(
            value: superContext.read<RegisterBloc>(),
            child: const _DirectlyAddTagDialog(),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RegisterBloc, RegisterState>(builder: (context, state) {
      return Scaffold(
        body: ListView(
          children: [
            const Text(
              '관심 주제',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            const Text(
              '관심 있는 주제를 선택해 주세요. 항목이 없으면 주제를 생성할 수 있습니다.',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15),
            Wrap(children: [
              ...state.interestedTags.map((tag) => _GeneratedTag(
                    onSelect: () {
                      BlocProvider.of<RegisterBloc>(context)
                          .add(RegisterEvent.selectTag(tag));
                    },
                    selected: state.selectedInterestedTags.contains(tag),
                    tag: tag,
                  )),
              _AddTag(
                onAdd: onAddTag,
              ),
            ]),
          ],
        ),
      );
    });
  }
}
