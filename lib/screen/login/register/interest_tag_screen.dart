import 'package:flutter/material.dart';
import 'package:grasstudy_client/color/light_color.dart';

class InterestTagScreen extends StatefulWidget {
  const InterestTagScreen({super.key});

  @override
  State<InterestTagScreen> createState() => _InterestTagScreenState();
}

class _InterestTagScreenState extends State<InterestTagScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView(
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
        Wrap(
          children: const [
            _Tag(
              selected: false,
              tag: "주제1",
            ),
            _Tag(
              selected: true,
              tag: "주제2",
            ),
          ],
        ),
      ],
    );
  }
}

class _Tag extends StatelessWidget {
  const _Tag({
    Key? key,
    required this.selected,
    required this.tag,
  }) : super(key: key);

  final bool selected;
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 5, 10, 0),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      decoration: BoxDecoration(
        border: Border.all(
          color: lightColorTheme.tertiaryColor,
        ),
        borderRadius: BorderRadius.circular(30),
        color: selected ? lightColorTheme.tertiaryColor : Colors.white,
      ),
      child: Text(
        tag,
        style: TextStyle(
          fontSize: 18,
          color: selected ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
