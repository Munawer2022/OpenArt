import 'package:flutter/material.dart';
import 'package:open_art2/components/bottom_row.dart';

import 'package:open_art2/process.dart';

import 'components/bar.dart';

class SetPrice extends StatefulWidget {
  const SetPrice({Key? key}) : super(key: key);

  @override
  State<SetPrice> createState() => _SetPriceState();
}

class _SetPriceState extends State<SetPrice> {
  var _controller = TextEditingController();
  _SetPriceState() {
    _dropdownvalue = _items[0];
  }

  String? _dropdownvalue = '';
  final _items = ['ETH', 'DXO', 'CRP', 'SIGN', 'APE', 'SMI'];
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    print('set price');
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
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 36),
                      RichText(
                          // textAlign: TextAlign.center,
                          text: TextSpan(
                        text: 'Fixed price',
                        style: theme.textTheme.headline3,
                        children: [
                          TextSpan(
                              text: '\nYou’ll receive bids on this item',
                              style: TextStyle(
                                  height: 2,
                                  color: theme.appBarTheme.foregroundColor,
                                  fontFamily: 'Epilogue',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16)),
                        ],
                      )),
                      const SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DropdownButton(
                              dropdownColor: theme.appBarTheme.backgroundColor,
                              elevation: 0,
                              iconSize: 30,
                              style: theme.textTheme.headline3,
                              value: _dropdownvalue,
                              items: _items
                                  .map(
                                    (e) => DropdownMenuItem(
                                        child: Text(e), value: e),
                                  )
                                  .toList(),
                              onChanged: (val) {
                                setState(() {
                                  _dropdownvalue = val as String;
                                });
                              }),
                          Container(
                            height: 56,
                            width: 240,
                            decoration: BoxDecoration(
                              color: theme.appBarTheme.backgroundColor,
                            ),
                            child: TextFormField(
                              keyboardType: TextInputType.number,
                              controller: _controller,
                              onChanged: (text) {
                                setState(() {});
                              },
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8.0)),
                                  fillColor: theme.appBarTheme.backgroundColor,
                                  filled: true,
                                  hintText: '0.00',
                                  hintStyle: TextStyle(
                                      color: theme.appBarTheme.foregroundColor,
                                      fontFamily: 'Epilogue',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
                                  suffixIcon: _controller.text.length > 0
                                      ? IconButton(
                                          onPressed: () {
                                            _controller.clear();
                                            setState(() {});
                                          },
                                          icon: Icon(
                                            Icons.cancel,
                                            color: theme
                                                .appBarTheme.foregroundColor,
                                          ))
                                      : null),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 36),
                      const Divider(
                        indent: 5,
                        endIndent: 5,
                        thickness: 1,
                        color: Color.fromARGB(255, 195, 195, 195),
                      ),
                      const SizedBox(height: 18),
                      Row(
                        children: [
                          RichText(
                            // textAlign: TextAlign.center,
                            text: TextSpan(
                                text: 'Unlock once purchased',
                                style: theme.textTheme.headline6,
                                children: [
                                  TextSpan(
                                      text:
                                          '\n\nContent will be unlocked after\nsuccessful transaction',
                                      style: TextStyle(
                                          color:
                                              theme.appBarTheme.foregroundColor,
                                          fontFamily: 'Epilogue',
                                          height: 1.3,
                                          fontWeight: FontWeight.w400,
                                          fontSize: 16)),
                                ]),
                          ),
                        ],
                      ),
                      const SizedBox(height: 36),
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
                                    builder: (context) => const Process(),
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
                            child: const Text('Mint NFT',
                                style: TextStyle(
                                    fontFamily: 'Epilogue',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xffFCFCFC))),
                          ),
                        ),
                      ),
                      const SizedBox(height: 120),
                    ]),
              ),
              BottomRow()
            ])));
  }
}
