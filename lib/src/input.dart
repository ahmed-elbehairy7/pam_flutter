import 'package:flutter/widgets.dart';
import 'package:pam_flutter/src/constants.dart';

enum InputType { text, list, dropdown, button, web }

class Input {
  final int id;
  final String name;
  final String description;
  final String setter;
  final InputType type;
  final String? hintText;
  final Function? majorFunc;
  final Function? addFunc;
  final Function? options;
  final Function? redo;
  final Widget? formField;
  final bool end;
  final bool addOnly;
  final bool editOnly;
  final bool addOption;
  final Color? color;

  Input(
      {required this.id,
      required this.name,
      required this.description,
      required this.setter,
      required this.type,
      this.hintText,
      this.majorFunc,
      this.addFunc,
      this.options,
      this.redo,
      this.end = false,
      this.addOnly = false,
      this.editOnly = false,
      this.addOption = false,
      this.color,
      this.formField});

  Input.fromJson(Dict json)
      : id = json['id'],
        hintText = json['hintText'],
        name = json['name'],
        description = json['description'],
        setter = json['setter'],
        type = json['type'],
        majorFunc = json['majorFunc'],
        addFunc = json['addFunc'],
        options = json['options'],
        redo = json['redo'],
        end = json['end'] ?? false,
        addOnly = json['addOnly'] ?? false,
        editOnly = json['editOnly'] ?? false,
        addOption = json['addOption'] ?? false,
        formField = json['formField'],
        color = json['color'];

  @override
  bool operator ==(covariant Input other) => hashCode == other.hashCode;

  @override
  int get hashCode => Object.hashAll([
        id,
        name,
        description,
        setter,
        type,
        hintText,
        end,
        addOnly,
        editOnly,
        addOption,
      ]);
}
