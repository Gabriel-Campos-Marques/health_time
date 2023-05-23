import 'package:flutter/material.dart';

class TypeConfig extends StatefulWidget {
  const TypeConfig(
      {super.key,
      required this.labelText,
      required this.iconType,
      required this.typeItems,
      required this.selectItem});

  final String labelText;
  final String iconType;
  final List<String> typeItems;
  final String selectItem;

  @override
  State<TypeConfig> createState() => _TypeConfigState();
}

class _TypeConfigState extends State<TypeConfig> {
  List<String> bloodType = ['A+', 'O+', 'AB+'];

  @override
  Widget build(BuildContext context) {
    String? selectType = widget.selectItem;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SizedBox(
            height: 30,
            child: Row(
              children: [
                Image.asset(widget.iconType),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(
                    widget.labelText,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: SizedBox(
            height: 60,
            width: 100,
            child: DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: UnderlineInputBorder(),
              ),
              icon: const Icon(
                Icons.keyboard_arrow_down,
              ),
              alignment: Alignment.centerRight,
              value: selectType,
              items: widget.typeItems
                  .map((item) => DropdownMenuItem<String>(
                        value: item,
                        child: Text(
                          item,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ))
                  .toList(),
              onChanged: (item) => setState(
                () => selectType = item,
              ),
            ),
          ),
        )
      ],
    );
  }
}
