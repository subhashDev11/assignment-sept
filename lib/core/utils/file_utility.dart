import 'dart:io';

class FileUtility{
  static Future<bool> isFileSizeLargerTo10MB(File file) async {
    try {
      // Get the file size
      final fileStat = await file.stat();

      // Check if the file size is larger than 10 MB (10 * 1024 * 1024 bytes)
      if (fileStat.size > 10 * 1024 * 1024) {
        return true; // File size is larger than 10 MB
      } else {
        return false; // File size is valid (less than or equal to 10 MB)
      }
    } catch (e) {
      // Handle any exceptions, e.g., file not found
      return false; // Something went wrong
    }
  }
}