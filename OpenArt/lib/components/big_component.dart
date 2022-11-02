import 'package:flutter/material.dart';

class BigComponent extends StatefulWidget {
  final String image;
  final String text;

  const BigComponent({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  State<BigComponent> createState() => _BigComponentState();
}

class _BigComponentState extends State<BigComponent> {
  bool isFollow = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Container(
        height: 520,
        width: 320,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 20,
                offset: const Offset(0, 10))
          ],
          color: theme.appBarTheme.backgroundColor,
          borderRadius: BorderRadius.circular(32),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(height: 12),
          Image.asset(widget.image, height: 370, width: 370),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.text,
              style: TextStyle(
                  color: theme.appBarTheme.foregroundColor,
                  fontFamily: 'Epilogue',
                  fontWeight: FontWeight.w700,
                  fontSize: 24),
            ),
          ),
          ListTile(
              leading: const CircleAvatar(),
              title: Text(
                'Pawel Czerwinski',
                style: TextStyle(
                    color: theme.appBarTheme.foregroundColor,
                    fontFamily: 'Epilogue',
                    fontWeight: FontWeight.w700),
              ),
              subtitle: Text(
                'Creator',
                style: TextStyle(
                    color: theme.appBarTheme.foregroundColor,
                    fontFamily: 'Epilogue',
                    fontWeight: FontWeight.w500),
              ),
              trailing: IconButton(
                onPressed: () {
                  setState(() {
                    isFollow = !isFollow;
                  });
                },
                icon: Icon(
                  isFollow ? Icons.favorite : Icons.favorite_outline,
                  color: isFollow
                      ? theme.appBarTheme.shadowColor
                      : theme.appBarTheme.foregroundColor,
                ),
              ))
        ]),
      ),
    );
  }
}
