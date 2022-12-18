part of '../interest_tag_screen.dart';

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
