import 'package:change_case/change_case.dart';
import 'package:example/use_white_foreground.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:nize/nize.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: const Text(
          "Colors",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(height: 2.5, color: Colors.black),
          Expanded(
            child: ListView.builder(
              itemCount: NizeColors.groups.length,
              itemBuilder: (context, i) {
                final NameDynamic group = NizeColors.groups[i];

                return Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: group.data[0].data.color,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: ExpandablePanel(
                    expanded: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: group.data.length,
                        separatorBuilder: (context, index) => const SizedBox(height: 5),
                        itemBuilder: (context, j) {
                          final item = group.data[j];

                          return Container(
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              color: item.data.color,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(color: Colors.black, width: 2),
                            ),
                            child: Text(
                              item.name.toString().toCapitalCase(),
                              style: TextStyle(
                                color: useWhiteForeground(item.data.color) ? Colors.white : Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    collapsed: Container(),
                    header: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            group.name.toCapitalCase(),
                            style: TextStyle(
                              color: useWhiteForeground(group.data[0].data.color) ? Colors.white : Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
