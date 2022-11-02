import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  const Button({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: const LinearGradient(
              colors: [Color(0xff0038F5), Color(0xff9F03FF)]),
        ),
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(const Size(330, 56)),
            elevation: MaterialStateProperty.all(0),
            backgroundColor: MaterialStateProperty.all(Colors.transparent),
            // padding: MaterialStateProperty.all(
            //     const EdgeInsets.symmetric(horizontal: 110, vertical: 18)),
          ),
          child: Text(text,
              style: const TextStyle(
                  fontFamily: 'Epilogue',
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffFCFCFC))),
        ),
      ),
    );
  }
}
