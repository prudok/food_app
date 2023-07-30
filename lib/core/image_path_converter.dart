import 'dart:async';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

abstract class ImagePathConverter {
  static Future<String> getImageFromAssets(String asset) async {
    final byteData = await rootBundle.load(asset);
    final file = File(
      '${(await getTemporaryDirectory()).path}/${asset.split('/').last}',
    );
    await file.writeAsBytes(
      byteData.buffer.asUint8List(
        byteData.offsetInBytes,
        byteData.lengthInBytes,
      ),
    );
    return file.path;
  }
}
