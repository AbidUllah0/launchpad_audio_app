import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LaunchPadMainScreen extends StatefulWidget {
  const LaunchPadMainScreen({super.key});

  @override
  State<LaunchPadMainScreen> createState() => _LaunchPadMainScreenState();
}

class _LaunchPadMainScreenState extends State<LaunchPadMainScreen> {
  List<Color> _innerColors = [
    Color(0xff067CCB),
    Color(0xffc40050),
    Color(0xffADCBFC),
    Color(0xffE247FC),
    Color(0xff067CCB),
    Color(0xffc40050),
    Color(0xffADCBFC),
    Color(0xffE247FC),
    Color(0xff067CCB),
    Color(0xffc40050),
    Color(0xffADCBFC),
    Color(0xffE247FC),
    Color(0xff067CCB),
    Color(0xffc40050),
    Color(0xffADCBFC),
    Color(0xffE247FC),
    Color(0xff067CCB),
    Color(0xffc40050),
    Color(0xffADCBFC),
    Color(0xffE247FC),
    Color(0xff067CCB),
    Color(0xffc40050),
    Color(0xffADCBFC),
    Color(0xffE247FC),
    Color(0xff067CCB),
    Color(0xffc40050),
    Color(0xffADCBFC),
    Color(0xffE247FC),
  ];
  List<Color> _outerColors = [
    Color(0xffADCBFC),
    Color(0xffff2525),
    Color(0xff067CCB),
    Color(0xffADCBFC),
    Color(0xffADCBFC),
    Color(0xffff2525),
    Color(0xff067CCB),
    Color(0xffADCBFC),
    Color(0xffADCBFC),
    Color(0xffff2525),
    Color(0xff067CCB),
    Color(0xffADCBFC),
    Color(0xffADCBFC),
    Color(0xffff2525),
    Color(0xff067CCB),
    Color(0xffADCBFC),
    Color(0xffADCBFC),
    Color(0xffff2525),
    Color(0xff067CCB),
    Color(0xffADCBFC),
    Color(0xffADCBFC),
    Color(0xffff2525),
    Color(0xff067CCB),
    Color(0xffADCBFC),
    Color(0xffADCBFC),
    Color(0xffff2525),
    Color(0xff067CCB),
    Color(0xffADCBFC),
  ];

  List _musicList = [
    '1.mp3',
    '2.mp3',
    '3.mp3',
    '4.mp3',
    '5.mp3',
    '6.mp3',
    '7.mp3',
    '8.mp3',
    '9.mp3',
    '10.mp3',
    '11.mp3',
    '12.mp3',
    '13.mp3',
    '14.mp3',
    '15.mp3',
    '16.mp3',
    '17.mp3',
    '18.mp3',
    '19.mp3',
    '20.wav',
    '21.mp3',
    '22.wav',
    '23.wav',
    '24.wav',
    '25.wav',
    '26.wav',
    '27.wav',
    '28.wav',
  ];

  final player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'LaunchPad Audio App',
          style: GoogleFonts.orbitron(color: Colors.white),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  itemCount: _innerColors.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () async {
                        setState(() {
                          player.play(AssetSource(_musicList[index]));
                        });
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          gradient: RadialGradient(
                            colors: [
                              _outerColors[index],
                              _innerColors[index],
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
