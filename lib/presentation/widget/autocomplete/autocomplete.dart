import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grasstudy_client/presentation/widget/autocomplete/data/autocompletable.dart';

part './components/item.dart';
part './components/options_view_builder.dart';
part './components/seperator.dart';

class AppAutoComplete<T extends Autocompletable> extends StatelessWidget {
  const AppAutoComplete({
    required this.label,
    required this.options,
    required this.onSelect,
    this.readOnly = false,
    this.customOptions = const [],
    Key? key,
  }) : super(key: key);

  final List<T> options;
  final void Function(T) onSelect;
  final String label;
  final bool readOnly;
  final List<Widget> customOptions;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return RawAutocomplete<T>(
        onSelected: onSelect,
        optionsBuilder: (textEditingValue) => options.where(
            (option) => option.displayString.contains(textEditingValue.text)),
        displayStringForOption: (option) => option.displayString,
        fieldViewBuilder:
            (context, textEditingController, focusNode, onFieldSubmitted) {
          return TextFormField(
            readOnly: readOnly,
            controller: textEditingController,
            focusNode: focusNode,
            onFieldSubmitted: (String value) {
              onFieldSubmitted();
            },
            decoration: InputDecoration(
              label: Text(label),
            ),
          );
        },
        optionsViewBuilder: (context, onSelected, options) =>
            _OptionsViewBuilder<T>(
          onSelected: onSelected,
          options: options,
          constraints: constraints,
          customOptions: customOptions,
        ),
      );
    });
  }
}
