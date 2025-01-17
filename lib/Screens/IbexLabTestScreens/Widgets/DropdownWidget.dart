import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_application_redux/Screens/IbexLabTestScreens/Widgets/TextInputLabelWidget.dart';

class DropdownWidget extends StatefulWidget {
  final Icon icon;
  final String label;
  final List<String> items;
  const DropdownWidget({Key key, this.icon, this.label, this.items})
      : super(key: key);
  @override
  _DropdownWidgetState createState() =>
      _DropdownWidgetState(icon: icon, label: label, items: items);
}

class _DropdownWidgetState extends State<DropdownWidget> {
  String _chosenValue;
  Icon icon;
  String label;
  List<String> items;
  _DropdownWidgetState({this.icon, this.label, this.items});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Column(
        children: [
          TextInputLabelWidget(icon: icon, label: label),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.0),
              color: Colors.white,
            ),
            padding: EdgeInsets.only(top: 5),
            height: 60,
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                hint: Text("data"),
                isExpanded: true,
                // decoration: InputDecoration(
                //   labelText: label,
                //   border:
                //       OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                // ),
                items: items
                    .map((label) => DropdownMenuItem(
                          child: Text(label),
                          value: label,
                        ))
                    .toList(),
                onChanged: (String newVal) {
                  setState(() {
                    _chosenValue = newVal;
                  });
                },
                //hint: new Text("Select City"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
