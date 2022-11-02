import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:open_art2/components/button.dart';
import 'package:open_art2/components/outline_button.dart';
import 'package:open_art2/set_price.dart';

import 'components/bar.dart';
import 'components/bottom_row.dart';

class UploardArtWork extends StatefulWidget {
  const UploardArtWork({Key? key}) : super(key: key);

  @override
  State<UploardArtWork> createState() => _UploardArtWorkState();
}

class _UploardArtWorkState extends State<UploardArtWork> {
  bool? _CheckBox, _ListTileCheckBox = false;
  bool? _CheckBoxTwo, _ListTileCheckBoxTwo = false;
  bool? _CheckBoxThree, _ListTileCheckBoxThree = false;
  bool? _CheckBoxFour, _ListTileCheckBoxFour = false;
  bool? _CheckBoxFive, _ListTileCheckBoxFive = false;
  // bool? _CheckBox, _ListTileCheckBox = false;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print('uploard arwork');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Image.asset(
          theme.brightness == Brightness.light
              ? 'images/Logo.png'
              : 'images/Logo3.png',
          width: 120,
          height: 120,
        ),
        
      ),
      
      body: SingleChildScrollView(
          physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Upload Artwork',
                        style: theme.textTheme.headline3,
                      ),
                      const SizedBox(height: 16),
                      Container(
                        height: 168,
                        width: 343,
                        decoration: BoxDecoration(
                            color: theme.appBarTheme.backgroundColor,
                            borderRadius: BorderRadius.circular(8)),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                color: theme.appBarTheme.foregroundColor,
                                Icons.image_outlined,
                                size: 24,
                              ),
                              const SizedBox(height: 20),
                              RichText(
                                  textAlign: TextAlign.center,
                                  text: TextSpan(
                                    text: 'Drop and drop or',
                                    style: theme.textTheme.headline6,
                                    children: [
                                      TextSpan(
                                          text: ' browse',
                                          style: TextStyle(
                                              decoration:
                                                  TextDecoration.underline,
                                              decorationColor:
                                                  Color(0xff555555),
                                              color: theme
                                                  .appBarTheme.foregroundColor,
                                              fontFamily: 'Epilogue',
                                              fontWeight: FontWeight.w900,
                                              fontSize: 16)),
                                      TextSpan(
                                        text: ' a file',
                                        style: theme.textTheme.headline6,
                                      ),
                                      TextSpan(
                                          text:
                                              '\n\nRecommended size: JPG, PNG, GIF\n(1500x1500px, Max 10mb)',
                                          style: TextStyle(
                                              color: theme
                                                  .appBarTheme.foregroundColor,
                                              fontFamily: 'Epilogue',
                                              fontWeight: FontWeight.w500,
                                              height: 1.5,
                                              fontSize: 13)),
                                    ],
                                  )),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(
                              theme.appBarTheme.shadowColor,
                            ),
                            checkColor: theme.appBarTheme.backgroundColor,
                            value: _ListTileCheckBox,
                            onChanged: (val) {
                              setState(() {
                                _ListTileCheckBox = val;
                              });
                            },
                          ),
                          Text(
                            'Multi-file',
                            style: TextStyle(
                              color: theme.appBarTheme.foregroundColor,
                              fontFamily: 'Epilogue',
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(children: [
                        Container(
                          height: 77,
                          width: 77,
                          decoration: BoxDecoration(
                              border: Border.all(color: theme.cardColor),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                              child: FaIcon(
                            Icons.upload_file_outlined,
                            size: 30,
                            color: theme.appBarTheme.foregroundColor,
                          )),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          height: 77,
                          width: 77,
                          decoration: BoxDecoration(
                              border: Border.all(color: theme.cardColor),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          height: 77,
                          width: 77,
                          decoration: BoxDecoration(
                              border: Border.all(color: theme.cardColor),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                        const SizedBox(width: 5),
                        Container(
                          height: 77,
                          width: 77,
                          decoration: BoxDecoration(
                              border: Border.all(color: theme.cardColor),
                              borderRadius: BorderRadius.circular(16)),
                        ),
                      ]),
                      const SizedBox(height: 20),
                      Text(
                        'Information',
                        style: TextStyle(
                          color: theme.appBarTheme.foregroundColor,
                          fontFamily: 'Epilogue',
                          fontWeight: FontWeight.w700,
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(height: 16),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: theme.appBarTheme.backgroundColor,
                            filled: true,
                            hintText: 'Item name',
                            hintStyle: TextStyle(
                                color: theme.appBarTheme.foregroundColor,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: theme.appBarTheme.backgroundColor,
                            filled: true,
                            hintText: 'Tag',
                            hintStyle: TextStyle(
                                color: theme.appBarTheme.foregroundColor,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                      ),
                      const SizedBox(height: 20),
                      TextFormField(
                        minLines: 1,
                        maxLines: 7,
                        decoration: InputDecoration(
                            hintMaxLines: 4,
                            //contentPadding: const EdgeInsets.only(bottom: 155),
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                            fillColor: theme.appBarTheme.backgroundColor,
                            filled: true,
                            hintText: 'Description',
                            hintStyle: TextStyle(
                                color: theme.appBarTheme.foregroundColor,
                                fontFamily: 'Epilogue',
                                fontWeight: FontWeight.w500,
                                fontSize: 16)),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(
                              theme.appBarTheme.shadowColor,
                            ),
                            checkColor: theme.appBarTheme.backgroundColor,
                            value: _ListTileCheckBoxTwo,
                            onChanged: (val) {
                              setState(() {
                                _ListTileCheckBoxTwo = val;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Sale this item',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  height: 2.7,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'You’ll receive bids on this item',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(
                              theme.appBarTheme.shadowColor,
                            ),
                            checkColor: theme.appBarTheme.backgroundColor,
                            value: _ListTileCheckBoxThree,
                            onChanged: (val) {
                              setState(() {
                                _ListTileCheckBoxThree = val;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Instant sale price',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  height: 2.7,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Enter the price for which the item will be\ninstantly sold',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(
                              theme.appBarTheme.shadowColor,
                            ),
                            checkColor: theme.appBarTheme.backgroundColor,
                            value: _ListTileCheckBoxFour,
                            onChanged: (val) {
                              setState(() {
                                _ListTileCheckBoxFour = val;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Unlock once purchased',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  height: 2.7,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Content will be unlocked after\nsuccessful transaction',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Checkbox(
                            fillColor: MaterialStateProperty.all(
                              theme.appBarTheme.shadowColor,
                            ),
                            checkColor: theme.appBarTheme.backgroundColor,
                            value: _ListTileCheckBoxFive,
                            onChanged: (val) {
                              setState(() {
                                _ListTileCheckBoxFive = val;
                              });
                            },
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Add to collection',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w700,
                                  height: 2.7,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                'Choose an exiting collection or create\na new one',
                                style: TextStyle(
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 158,
                            decoration: BoxDecoration(
                                border: Border.all(color: theme.cardColor),
                                borderRadius: BorderRadius.circular(16)),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Center(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    FaIcon(
                                      Icons.add_a_photo_outlined,
                                      size: 30,
                                      color: theme.appBarTheme.foregroundColor,
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      'Create new collection',
                                      style: TextStyle(
                                        color:
                                            theme.appBarTheme.foregroundColor,
                                        fontFamily: 'Epilogue',
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Container(
                            height: 100,
                            width: 158,
                            decoration: BoxDecoration(
                                color: theme.appBarTheme.backgroundColor,
                                borderRadius: BorderRadius.circular(16)),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 75,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color:
                                            theme.appBarTheme.backgroundColor,
                                        border:
                                            Border.all(color: theme.cardColor),
                                        borderRadius: BorderRadius.circular(8)),
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    height: 75,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        color:
                                            theme.appBarTheme.backgroundColor,
                                        border:
                                            Border.all(color: theme.cardColor),
                                        borderRadius: BorderRadius.circular(8)),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 40),
                      const OutlineButton(text: 'Preview'),
                      const SizedBox(height: 12),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            gradient: const LinearGradient(
                                colors: [Color(0xff0038F5), Color(0xff9F03FF)]),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const SetPrice(),
                                  ));
                            },
                            style: ButtonStyle(
                              minimumSize: MaterialStateProperty.all(
                                  const Size(330, 56)),
                              elevation: MaterialStateProperty.all(0),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.transparent),
                              // padding: MaterialStateProperty.all(
                              //     const EdgeInsets.symmetric(horizontal: 110, vertical: 18)),
                            ),
                            child: const Text('Uploard',
                                style: TextStyle(
                                    fontFamily: 'Epilogue',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFCFCFC))),
                          ),
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Divider(
                        indent: 20,
                        endIndent: 20,
                        thickness: 1,
                        color: Color.fromARGB(255, 195, 195, 195),
                      ),
                      const SizedBox(height: 100),
                    ]),
              ),
              const BottomRow(),
            ],
          )),
    );
  }
}
