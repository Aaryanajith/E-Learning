import 'package:e_learning_mobile/features/notes/data/download_state_provider.dart';
import 'package:e_learning_mobile/features/notes/data/pdf_provider.dart';
import 'package:e_learning_mobile/resources/theme.dart';
import 'package:e_learning_mobile/resources/screen_util.dart';
import 'package:e_learning_mobile/widgets/appbar.dart';
import 'package:e_learning_mobile/widgets/error_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:e_learning_mobile/features/notes/data/notes_provider.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:e_learning_mobile/constants/constants.dart';
import 'package:e_learning_mobile/widgets/notes_widgets/download_notes.dart';

class NotesView extends ConsumerWidget {
  final String? id;
  const NotesView({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notesData = ref.watch(getNotesProvider(id ?? ""));
    final isDownloaded = ref.watch(isDownloadedProvider);

    return Scaffold(
      backgroundColor: ColorsClass.white,
      appBar: const ELearningAppBar(
          title: "Notes",
          issplash: false,
          backButton: true,
      ),
      floatingActionButton: FloatingActionButton.large(
        backgroundColor: ColorsClass.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        onPressed: () {
          notesData.when(
            data: (data) {
              final downloadUrl = "$apiURL/media/${data.file}";
              NotesDownload.handleDownload(
                context,
                ref,
                downloadUrl,
                isDownloaded,
                (bool value) {
                  ref.read(isDownloadedProvider.notifier).state = value;
                },
              );
            },
            error: (e, _) => ELErrorWidget(e: e),
            loading: () => const Center(child: CircularProgressIndicator()),
          );
        },
        child: Padding(
          padding: EdgeInsets.all(ScreenUtils.w2(context)),
          child: Icon(
            isDownloaded ? Icons.check : Icons.download,
            color: ColorsClass.primaryTheme,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: ScreenUtils.w2(context)),
        child: SizedBox(
          height: ScreenUtils.screenHeight(context) * 1,
          child: Padding(
            padding: EdgeInsets.only(top: ScreenUtils.h2(context)),
            child: notesData.when(
              data: (data) {
                final viewUrl = "$apiURL/media/${data.file}";
                final pdfFile = ref.watch(loadPdfProvider(viewUrl));
                return pdfFile.when(
                  data: (file) {
                    return ClipRRect(
                      child: PDFView(
                        filePath: file.path,
                        enableSwipe: true,
                        autoSpacing: false,
                        pageFling: true,
                        pageSnap: true,
                        fitPolicy: FitPolicy.BOTH,
                      ),
                    );
                  },
                  error: (e, _) {
                    return ELErrorWidget(e: e);
                  },
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              },
              error: (e, _) {
                return ELErrorWidget(e: e);
              },
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
