import 'package:flutter/material.dart';

class DiscoverComponent extends StatefulWidget {
  final String coverimage;
  final String dpimage;
  final String titletext;
  final String subtitletext;
  final String follow;
  final String tag;
  const DiscoverComponent({
    Key? key,
    required this.coverimage,
    required this.dpimage,
    required this.titletext,
    required this.subtitletext,
    required this.follow,
    required this.tag,
  }) : super(key: key);

  @override
  State<DiscoverComponent> createState() => _DiscoverComponentState();
}

class _DiscoverComponentState extends State<DiscoverComponent> {
  bool isFollow = true;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print('discover component');
    return Center(
      child: Container(
        height: 430,
        width: 320,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: theme.shadowColor,
                spreadRadius: 5,
                blurRadius: 20,
                offset: const Offset(0, 10))
          ],
          color: theme.appBarTheme.backgroundColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(children: [
            Stack(clipBehavior: Clip.none, children: [
              Hero(
                tag: widget.tag,
                child: Image.asset(
                  widget.coverimage,
                  height: 160,
                  width: 375,
                ),
              ),
              Positioned(
                left: 90,
                bottom: -40,
                child: CircleAvatar(
                  backgroundImage: AssetImage(widget.dpimage),
                  radius: 60,
                ),
              ),
            ]),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 60),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        widget.titletext,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headline3,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Align(
                      alignment: Alignment.center,
                      child: Text(widget.subtitletext,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              height: 1.4,
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w400,
                              fontSize: 16)),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                            text: TextSpan(
                          text: widget.follow,
                          style: TextStyle(
                            color: theme.appBarTheme.foregroundColor,
                            fontFamily: 'Epilogue',
                            fontWeight: FontWeight.w700,
                            fontSize: 32,
                          ),
                          children: [
                            TextSpan(
                                text: ' Followers',
                                style: TextStyle(
                                    color: theme.appBarTheme.foregroundColor,
                                    fontFamily: 'Epilogue',
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16)),
                          ],
                        )),
                        InkWell(
                          onTap: () {
                            setState(() {
                              isFollow = !isFollow;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: 40,
                            width: 112,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: theme.shadowColor,
                                    spreadRadius: 5,
                                    blurRadius: 20,
                                    offset: const Offset(0, 5))
                              ],
                              color: isFollow
                                  ? theme.backgroundColor
                                  : const Color(0xff0038F5),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                isFollow ? 'Follow' : 'Unfollow',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: isFollow
                                      ? theme.appBarTheme.foregroundColor
                                      : const Color(0xffFCFCFC),
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
            )
          ]),
        ),
      ),
    );
  }
}
