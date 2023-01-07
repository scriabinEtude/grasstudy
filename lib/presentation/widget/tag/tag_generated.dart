import 'package:flutter/material.dart';
import 'package:grasstudy_client/data/model/tag.dart';
import 'package:grasstudy_client/presentation/color/light_color.dart';

class GeneratedTag extends StatelessWidget {
  const GeneratedTag({
    super.key,
    required this.onSelect,
    required this.selected,
    required this.tag,
  });

  final void Function() onSelect;
  final bool selected;
  final Tag tag;

  @override
  Widget build(BuildContext context) {
    return TagWidget(
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

class TagWidget extends StatelessWidget {
  const TagWidget({
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
