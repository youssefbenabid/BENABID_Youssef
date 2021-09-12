import 'package:benabid_youssef/constants/style.dart';
import 'package:benabid_youssef/helpers/DeviceSizeConfig.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';

class ProjectTemplateMobile extends StatefulWidget {
  final String appTitle;
  final String appDescription;
  final String state;
  final String videoPath;
  final double videoRatio;
  final bool isVideoDemo;
  final List<Widget> demoImages;
  final double imagesHeight;

  const ProjectTemplateMobile(
      {required this.appTitle,
        required this.appDescription,
        required this.state,
        required this.videoPath,
        required this.videoRatio,
        required this.isVideoDemo,
        required this.demoImages,
        required this.imagesHeight});

  @override
  State<ProjectTemplateMobile> createState() => _ProjectTemplateMobileState();
}

class _ProjectTemplateMobileState extends State<ProjectTemplateMobile> {
  late VideoPlayerController controller;

  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.asset(widget.videoPath)
      ..addListener(() => setState(() {}))
      ..setLooping(true)
      ..initialize().then((value) => controller.pause());
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  Widget videoPlayerWidget() {
    return controller != null && controller.value.isInitialized
        ? Container(
      alignment: Alignment.topCenter,
      child: Stack(
        children: [
          AspectRatio(
              aspectRatio:
              controller.value.aspectRatio * widget.videoRatio,
              child: VideoPlayer(controller)),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: VideoProgressIndicator(controller,
                  allowScrubbing: true)),
          Positioned(
            child: FloatingActionButton(
              backgroundColor: Colors.transparent,
              hoverColor: Colors.black26.withOpacity(0.8),
              onPressed: () {
                controller.value.isPlaying
                    ? controller.pause()
                    : controller.play();
              },
              child: Icon(controller.value.isPlaying
                  ? Icons.pause
                  : Icons.play_arrow),
            ),
          )
        ],
      ),
    )
        : Container(
      height: DeviceSizeConfig.blockSizeVertical * 20,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget imageSlider() {
    return ImageSlideshow(
      width: double.infinity,
      height: widget.imagesHeight,
      initialPage: 0,
      indicatorColor: Colors.blue,
      indicatorBackgroundColor: Colors.grey,
      autoPlayInterval: 3000,
      isLoop: true,
      children: widget.demoImages,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(DeviceSizeConfig.blockSizeHorizontal * 3),
        margin: EdgeInsets.all(DeviceSizeConfig.blockSizeHorizontal * 5),
        decoration: BoxDecoration(
          // color: Colors.blueAccent.withOpacity(0.7),
            border: Border.all(
                color: Colors.black,
                width: DeviceSizeConfig.blockSizeHorizontal * 0.5),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'App title :',
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                        color: dark,
                        fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: DeviceSizeConfig.blockSizeHorizontal * 3,
                ),
                Text(
                  widget.appTitle,
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: DeviceSizeConfig.blockSizeHorizontal * 4.5,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: DeviceSizeConfig.blockSizeVertical * 2,
            ),
            Text(
              'App descrition :',
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                    color: dark,
                    fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: DeviceSizeConfig.blockSizeVertical * 2,
            ),
            Text(
              widget.appDescription,
              textAlign: TextAlign.justify,
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: DeviceSizeConfig.blockSizeHorizontal * 5,
                ),
              ),
            ),
            SizedBox(
              height: DeviceSizeConfig.blockSizeVertical * 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'State of the app :',
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                        color: dark,
                        fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  width: DeviceSizeConfig.blockSizeHorizontal * 2,
                ),
                Text(
                  widget.state,
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: DeviceSizeConfig.blockSizeHorizontal * 4,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: DeviceSizeConfig.blockSizeVertical * 2,
            ),
            Text(
              'Demo :',
              style: GoogleFonts.aBeeZee(
                textStyle: TextStyle(
                    color: dark,
                    fontSize: DeviceSizeConfig.blockSizeHorizontal * 6,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: DeviceSizeConfig.blockSizeVertical * 2,
            ),
            widget.isVideoDemo ? videoPlayerWidget() : imageSlider(),
          ],
        ),
      ),
    );
  }
}