import 'package:flutter/material.dart';

class ActivityCurrentPageThree extends StatefulWidget {
  const ActivityCurrentPageThree({Key? key}) : super(key: key);

  @override
  State<ActivityCurrentPageThree> createState() =>
      _ActivityCurrentPageThreeState();
}

class _ActivityCurrentPageThreeState extends State<ActivityCurrentPageThree> {
  @override
  Widget build(BuildContext context) {
    final List<String> title = <String>[
      'Bid place by @pawel09',
      'Bid place by @pawel09',
      'Bid place by @pawel09',
      'Listing by @han152',
    ];
    final List<String> subtitle = <String>[
      'June 06, 2022 at 12:00am',
      'June 06, 2022 at 12:00am',
      'June 06, 2022 at 12:00am',
      'June 04, 2022 at 12:00am',
    ];
    final List<String> lasttitle = <String>[
      '1.50 ETH ',
      '1.50 ETH ',
      '1.50 ETH ',
      '1.00 ETH ',
    ];
    final List<String> lasttitlesmall = <String>[
      '\$2,683.73',
      '\$2,683.73',
      '\$2,683.73',
      '\$2,683.73',
    ];
    final List image = [
      'images/Rectangle2.png',
      'images/Non-Photos.png',
      'images/Rectangle5.png',
      'images/Rectangle5.png',
    ];
    final theme = Theme.of(context);
    return Container(
      height: 500,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: title.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: Container(
                  height: 97,
                  width: 327,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: theme.shadowColor,
                          spreadRadius: 1,
                          blurRadius: 30,
                          offset: const Offset(0, 0))
                    ],
                    color: theme.appBarTheme.backgroundColor,
                    borderRadius: BorderRadius.circular(16),
                    //shape: BoxShape.circle,
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        subtitle: Text(
                          subtitle[index],
                          style: TextStyle(
                            color: theme.appBarTheme.foregroundColor,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                          ),
                        ),
                        title: Text(
                          title[index],
                          style: TextStyle(
                            color: theme.appBarTheme.foregroundColor,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                          ),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(image[index]),
                          radius: 24,
                        ),
                        trailing: Icon(
                          color: theme.appBarTheme.foregroundColor,
                          Icons.navigate_next,
                          size: 20,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 35),
                        child: RichText(
                          text: TextSpan(
                            text: lasttitle[index],
                            style: theme.textTheme.headline6,
                            children: [
                              TextSpan(
                                text: lasttitlesmall[index],
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
