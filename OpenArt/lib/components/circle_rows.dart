import 'package:flutter/material.dart';

class CircleRows extends StatefulWidget {
  const CircleRows({Key? key}) : super(key: key);

  @override
  State<CircleRows> createState() => _CircleRowsState();
}

class _CircleRowsState extends State<CircleRows> {
  @override
  Widget build(BuildContext context) {
    final List<String> tags = <String>[
      '#color',
      '#circle',
      '#black',
      '#art',
    ];
    final theme = Theme.of(context);
    return Container(
      height: 30,
      child: ListView.builder(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          itemCount: tags.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Container(
                    height: 27,
                    width: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0.4, color: const Color(0xff888888)),
                      // color: const Color(0xff888888),
                      borderRadius: BorderRadius.circular(32),
                    ),
                    child: Center(
                      child: Text(
                        tags[index],
                        style: TextStyle(
                          color: theme.appBarTheme.foregroundColor,
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
