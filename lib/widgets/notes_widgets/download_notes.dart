import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_learning_mobile/features/notes/data/pdf_provider.dart';

class NotesDownload {
  static Future<void> downloadFile(
      File file, Function(bool) onDownloadComplete) async {
    try {
      Directory downloadDirectory = Directory('/storage/emulated/0/Download');
      final String timestamp =
          DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());
      final String filePath = '${downloadDirectory.path}/notes_$timestamp.pdf';
      final File newFile = File(filePath);

      await newFile.writeAsBytes(await file.readAsBytes(), flush: true);
      debugPrint('PDF file saved at $filePath');

      onDownloadComplete(true);
    } catch (e) {
      debugPrint('Error saving PDF file: $e');
      onDownloadComplete(false);
    }
  }

  static Future<void> downloadNotes(
      WidgetRef ref, String fileUrl, Function(bool) onDownloadComplete) async {
    final pdfFile = await ref.read(loadPdfProvider(fileUrl).future);
    await downloadFile(pdfFile, onDownloadComplete);
  }

  static void handleDownload(BuildContext context, WidgetRef ref,
      String fileUrl, bool isDownloaded, Function(bool) setState) {
    if (!isDownloaded) {
      downloadNotes(ref, fileUrl, (status) {
        if (context.mounted) {
          setState(status);
          if (status) {
            debugPrint('Download successful');
          } else {
            debugPrint('Download failed');
          }
        }
      });
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            elevation: 5.0,
            backgroundColor: Colors.white,
            child: Container(
              padding: const EdgeInsets.all(20.0),
              child: const Text('Notes already downloaded!'),
            ),
          );
        },
      );
    }
  }
}
