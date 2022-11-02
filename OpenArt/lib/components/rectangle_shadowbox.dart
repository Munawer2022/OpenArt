import 'package:flutter/material.dart';

class RectangleShadowBox extends StatefulWidget {
  const RectangleShadowBox({Key? key}) : super(key: key);

  @override
  State<RectangleShadowBox> createState() => _RectangleShadowBoxState();
}

class _RectangleShadowBoxState extends State<RectangleShadowBox> {
  @override
  Widget build(BuildContext context) {
    final List<String> title = <String>[
      'View on Etherscan',
      'View on IPFS',
      'View IPFS Metadata',
    ];
    final List icon = [
      Icons.bar_chart_outlined,
      Icons.star_outline,
      Icons.pie_chart_sharp,
    ];
    final theme = Theme.of(context);
    return Container(
      height: 250,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: title.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: Container(
                  height: 58,
                  width: 327,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: theme.shadowColor,
                          spreadRadius: 1,
                          blurRadius: 15,
                          offset: const Offset(0, 10))
                    ],
                    color: theme.appBarTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(16),
                    //shape: BoxShape.circle,
                  ),
                  child: ListTile(
                    title: Text(
                      title[index],
                      style: theme.textTheme.headline6,
                    ),
                    leading: Icon(icon[index],
                        size: 30, color: theme.appBarTheme.foregroundColor),
                    trailing: Icon(
                      color: theme.appBarTheme.foregroundColor,
                      Icons.navigate_next,
                      size: 20,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
