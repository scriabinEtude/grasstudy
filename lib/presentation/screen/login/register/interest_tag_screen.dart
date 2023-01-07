import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_bloc.dart';
import 'package:grasstudy_client/bloc/register/register_event.dart';
import 'package:grasstudy_client/bloc/register/register_state.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/presentation/widget/tag/tag_add.dart';
import 'package:grasstudy_client/presentation/widget/tag/tag_direct.dart';
import 'package:grasstudy_client/presentation/widget/tag/tag_generated.dart';

class InterestTagScreen extends StatelessWidget {
  const InterestTagScreen({super.key});

  void onTagAddSubmit(BuildContext context, Tag tag) {
    BlocProvider.of<RegisterBloc>(context).add(RegisterEvent.addTag(tag));
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
              ...state.interestedTags.map((tag) => GeneratedTag(
                    onSelect: () {
                      BlocProvider.of<RegisterBloc>(context)
                          .add(RegisterEvent.selectTag(tag));
                    },
                    selected: state.selectedInterestedTags.contains(tag),
                    tag: tag,
                  )),
              AddTag(
                onAdd: (context) =>
                    AddTag.showAddTagDialog<RegisterBloc, String>(
                  context,
                  onTagAddSubmit,
                ),
                onTagAddSubmit: onTagAddSubmit,
              ),
            ]),
          ],
        ),
      );
    });
  }
}
