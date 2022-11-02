import 'package:flutter/material.dart';
import 'package:open_art2/components/bottom_row.dart';

import 'components/bar.dart';

class About extends StatefulWidget {
  const About({Key? key}) : super(key: key);

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
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
                  Center(
                    child: Text(
                      'About OpenArt',
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Center(child: Image.asset('images/processor.png', scale: 3)),
                  const SizedBox(height: 15),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'OpenArt help anyone create a beautiful website, landing page, app to collect NFTs digital art',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: theme.appBarTheme.foregroundColor,
                        fontFamily: 'Epilogue',
                        fontWeight: FontWeight.w400,
                        height: 1.4,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'Crypto for Creative Communities',
                        style: TextStyle(
                          fontFamily: 'Epilogue',
                          fontSize: 20,
                          height: 1.4,
                          fontWeight: FontWeight.w700,
                          color: theme.appBarTheme.foregroundColor,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '\n\nNFTs—non-fungible tokens—are empowering artists, musicians, and all kinds of genre-defying digital creators to invent a new cultural paradigm. How this emerging culture of digital art ownership looks is up to all of us.',
                            style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.w400,
                              color: theme.appBarTheme.foregroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Center(
                    child: Text(
                      'How it work',
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                  const SizedBox(height: 40),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 188,
                          width: 146,
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
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/globe.png', scale: 5),
                                const Center(child: SizedBox(height: 12)),
                                Center(
                                  child: Text(
                                    'Build together',
                                    style: theme.textTheme.headline6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 11),
                        Container(
                          height: 188,
                          width: 146,
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
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset('images/processor.png', scale: 5),
                                const Center(child: SizedBox(height: 12)),
                                Center(
                                  child: Text(
                                    'Trust',
                                    style: theme.textTheme.headline6,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'For Creator',
                        style: TextStyle(
                          fontFamily: 'Epilogue',
                          fontSize: 20,
                          height: 1.4,
                          fontWeight: FontWeight.w700,
                          color: theme.appBarTheme.foregroundColor,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '\n\nCreators are invited to join Foundation by members of the community. Once you’ve received an invite, you’ll need to set up a MetaMask wallet with ETH before you can create an artist profile and mint an NFT—which means uploading your JPG, PNG, or video file to IPFS, a decentralized peer-to-peer storage network. It will then be an NFT you can price in ETH and put up for auction on Foundation. ',
                            style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.w400,
                              color: theme.appBarTheme.foregroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: 'For Creator',
                        style: TextStyle(
                          fontFamily: 'Epilogue',
                          fontSize: 20,
                          height: 1.4,
                          fontWeight: FontWeight.w700,
                          color: theme.appBarTheme.foregroundColor,
                        ),
                        children: [
                          TextSpan(
                            text:
                                '\n\nOn Foundation, anyone can create a profile to start collecting NFTs. All you’ll need is a MetaMask wallet and ETH, the cryptocurrency used to pay for all transactions on Ethereum. Artists list NFTs for auction at a reserve price, and once the first bid is placed, a 24-hour auction countdown begins. If a bid is placed within the last 15 minutes, the auction extends for another 15 minutes. ',
                            style: TextStyle(
                              fontFamily: 'Epilogue',
                              fontSize: 16,
                              height: 1.4,
                              fontWeight: FontWeight.w400,
                              color: theme.appBarTheme.foregroundColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
            const BottomRow(),
          ],
        ),
      ),
    );
  }
}
