import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () async {
          await FlutterDownloader.enqueue(
            url:
                'https://www.simplilearn.com/ice9/free_resources_article_thumb/what_is_image_Processing.jpg',
            savedDir:
                'the path of directory where you want to save downloaded files',
            showNotification:
                true, // show download progress in status bar (for Android)
            openFileFromNotification:
                true, // click on notification to open downloaded file (for Android)
          );
        },
        child: Text(
          'Download CV',
          style: TextStyle(fontSize: 20, fontFamily: 'SourceSansPro'),
        ),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          minimumSize: Size(MediaQuery.of(context).size.width * 0.2,
              MediaQuery.of(context).size.height * .08),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
