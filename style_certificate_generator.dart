import 'package:flutter/material.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

class StyleCertificateGenerator extends StatelessWidget {
  final String buyerName;
  final String styleBadge;

  const StyleCertificateGenerator({super.key, required this.buyerName, required this.styleBadge});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🎖️ Style Capsule Certificate')),
      body: Center(
        child: ElevatedButton.icon(
          icon: const Icon(Icons.picture_as_pdf),
          label: const Text('Download Your Certificate'),
          onPressed: () async {
            final doc = pw.Document();

            doc.addPage(
              pw.Page(
                build: (context) => pw.Center(
                  child: pw.Text(
                    '$buyerName has been awarded the "$styleBadge" badge\n\nIn recognition of outstanding stylistic expression\nVia Kisswaar',
                    style: pw.TextStyle(fontSize: 22),
                    textAlign: pw.TextAlign.center,
                  ),
                ),
              ),
            );

            await Printing.layoutPdf(onLayout: (format) => doc.save());
          },
        ),
      ),
    );
  }
}
