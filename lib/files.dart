
const List<String> videoFormats = [
  '.mp4',
  '.mov',
  '.avi',
  '.wmv',
  '.3gp',
  '.3gpp',
  '.mkv',
  '.flv'
];
const List<String> imageFormats = [
  '.jpeg',
  '.png',
  '.jpg',
  '.gif',
  '.webp',
  '.tif',
  '.heic',
  '.jfif', //Added an image file type
  '.cr2',  //Added raw image type 1
  '.arw',  //Added raw image type 2
  '.nef',  //Added raw image type 3
  '.dng',  //Added raw image type 4
  '.raf',  //Added raw image type 5
  '.raw'   //Added raw image type 6
];
const http = 'http';

bool isLocalFilePath(String path) {
  Uri uri = Uri.parse(path);
  return !uri.scheme.contains(http);
}

bool isVideo(String path) {
  bool output = false;
  videoFormats.forEach((videoFormat) {
    if (path.toLowerCase().contains(videoFormat)) output = true;
  });
  return output;
}

bool isImage(String path) {
  bool output = false;
  imageFormats.forEach((imageFormat) {
    if (path.toLowerCase().contains(imageFormat)) output = true;
  });
  return output;
}
